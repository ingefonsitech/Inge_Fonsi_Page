# Instrucciones de Despliegue en Vercel ($0 Costo)

La landing page "Inge Fonsi" está construida con arquitectura puramente estática (HTML, CSS, JS plano). Esto elimina la necesidad de configuraciones complejas (Node.js, Webpack, etc.), lo que permite un despliegue instantáneo y gratuito bajo el "Hobby Plan" de Vercel.

## Paso 1: Guardar la Versión Final en GitHub
Abre la terminal en la carpeta principal de tu proyecto y ejecuta los siguientes comandos para sincronizar tu trabajo con tu repositorio de GitHub:

```bash
# Agregar todos los cambios
git add .

# Crear el "sello" final
git commit -m "feat: landing page lista para producción"

# Subir a la rama principal (main)
git push origin main
```

## Paso 2: Importar en Vercel
1. Ingresa a [Vercel.com](https://vercel.com) e inicia sesión (preferiblemente con tu cuenta de GitHub).
2. En tu panel de control, haz clic en el botón negro **"Add New"** y luego selecciona **"Project"**.
3. Vercel mostrará tu lista de repositorios de GitHub. Localiza el repositorio de la landing (ej. `inge-fonsi`) y haz clic en **"Import"**.

## Paso 3: Configurar y Desplegar
Dado que este proyecto NO usa frameworks extraños, la configuración es nula:
1. Vercel identificará automáticamente que es un proyecto **"Other"** (HTML estático).
2. No es necesario modificar "Build Command" ni "Output Directory".
3. *(Opcional)* Si vas a implementar un backend en el futuro, puedes agregar tu `WHATSAPP_NUMBER` en la sección de **"Environment Variables"**. Sin embargo, esto no es requerido para que la página funcione visualmente.
4. Haz clic en el botón **"Deploy"**.

Tardará aproximadamente 5 a 10 segundos en subir los archivos, aplicar SSL, y proporcionar un dominio `.vercel.app`.

### Felicidades: Proyecto en Vivo 🚀
Cualquier cambio que realices y subas posteriormente a tu rama `main` de GitHub, actualizará la página automáticamente en Vercel sin que tengas que tocar nada más.
