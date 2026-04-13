export default async function handler(req, res) {
    // Solo permitir POST
    if (req.method !== 'POST') {
        return res.status(405).json({ success: false, message: 'Method Not Allowed' });
    }

    try {
        const body = typeof req.body === 'string' ? JSON.parse(req.body) : req.body;
        
        const hCaptchaToken = body['h-captcha-response'];
        const resendKey = process.env.RESEND_API_KEY;
        const targetEmail = process.env.CONTACT_EMAIL || 'tucorreo@dominio.com';
        const hCaptchaSecret = process.env.HCAPTCHA_SECRET;

        // 1. Validar configuracion de entorno
        if (!resendKey) {
            console.error('Missing RESEND_API_KEY');
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

        // 3. Reenviar datos a Resend
        const subject = body.subject || 'Nuevo Lead desde Formulario Inge Fonsi';
        
        // Formatear los campos de manera dinámica (ya que hay varios formularios diferentes)
        const excludedKeys = ['h-captcha-response', 'g-recaptcha-response', 'subject', 'from_name', 'botcheck', 'access_key'];
        const fieldsHtml = Object.keys(body)
            .filter(key => !excludedKeys.includes(key) && body[key].toString().trim() !== '')
            .map(key => `<p><strong>${key.toUpperCase()}:</strong><br/> ${body[key]}</p>`)
            .join('<br/>');

        const payload = {
            from: 'Inge Fonsi Web <onboarding@resend.dev>',
            to: targetEmail,
            subject: subject,
            html: `
                <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; color: #333;">
                    <h2 style="color: #00bcd4;">Nuevo mensaje de tu sitio web</h2>
                    <hr style="border: 1px solid #eee; margin-bottom: 20px;" />
                    ${fieldsHtml}
                </div>
            `
        };

        const resendResponse = await fetch('https://api.resend.com/emails', {
            method: 'POST',
            headers: {
                'Authorization': `Bearer ${resendKey}`,
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(payload),
        });

        const responseText = await resendResponse.text();
        let emailData = {};
        try {
            emailData = JSON.parse(responseText);
        } catch (e) {
            console.error('Resend returned non-JSON response:', responseText.substring(0, 500));
            return res.status(500).json({ success: false, message: 'Invalid response from email provider.' });
        }

        if (resendResponse.ok) {
            return res.status(200).json({ success: true, message: 'Message sent successfully!' });
        } else {
            console.error('Resend Error:', emailData);
            return res.status(500).json({ success: false, message: `Error sending message: ${emailData.message || 'Unknown error'}` });
        }
    } catch (error) {
        console.error('Server error:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
}
