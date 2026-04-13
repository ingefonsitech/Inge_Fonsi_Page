export default async function handler(req, res) {
    // Solo permitir POST
    if (req.method !== 'POST') {
        return res.status(405).json({ success: false, message: 'Method Not Allowed' });
    }

    try {
        const body = typeof req.body === 'string' ? JSON.parse(req.body) : req.body;
        
        const hCaptchaToken = body['h-captcha-response'];
        const web3FormsKey = process.env.WEB3FORMS_KEY;
        const hCaptchaSecret = process.env.HCAPTCHA_SECRET;

        // 1. Validar configuracion de entorno
        if (!web3FormsKey) {
            console.error('Missing WEB3FORMS_KEY');
            return res.status(500).json({ success: false, message: 'Server configuration error' });
        }

        // 2. Si hay secreto configurado, validar hCaptcha
        if (hCaptchaSecret && hCaptchaToken) {
            const verifyParams = new URLSearchParams();
            verifyParams.append('secret', hCaptchaSecret);
            verifyParams.append('response', hCaptchaToken);

            const verifyResponse = await fetch('https://api.hcaptcha.com/siteverify', {
                method: 'POST',
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                body: verifyParams.toString(),
            });

            const verifyData = await verifyResponse.json();

            if (!verifyData.success) {
                console.error('hCaptcha verification failed:', verifyData);
                return res.status(400).json({ success: false, message: 'Captcha validation failed. Please try again.' });
            }
        } else if (hCaptchaSecret && !hCaptchaToken) {
            // Requiere captcha pero no se envio
            return res.status(400).json({ success: false, message: 'Please complete the captcha.' });
        }

        // 3. Reenviar datos a Web3Forms
        const payload = {
            ...body,
            access_key: web3FormsKey,
        };

        // Eliminar el token de hcaptcha del payload final para no ensuciar el email
        delete payload['h-captcha-response'];
        delete payload['g-recaptcha-response'];

        const web3Response = await fetch('https://api.web3forms.com/submit', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                Accept: 'application/json',
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
            },
            body: JSON.stringify(payload),
        });

        const responseText = await web3Response.text();
        let web3Data = {};
        try {
            web3Data = JSON.parse(responseText);
        } catch (e) {
            console.error('Web3Forms returned non-JSON response:', responseText.substring(0, 500));
            return res.status(500).json({ success: false, message: 'Invalid response from email provider.' });
        }

        if (web3Response.ok && web3Data.success) {
            return res.status(200).json({ success: true, message: 'Message sent successfully!' });
        } else {
            console.error('Web3Forms Error:', web3Data);
            return res.status(500).json({ success: false, message: 'Error sending message via integration.' });
        }
    } catch (error) {
        console.error('Server error:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
}
