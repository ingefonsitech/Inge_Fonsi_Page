$files = @(
    "index.html",
    "servicios/index.html",
    "servicios/geo-visibilidad-ia/index.html",
    "servicios/seo-tecnico-bogota/index.html",
    "servicios/chatbot-ia-negocio/index.html",
    "servicios/landing-pages-bogota/index.html",
    "servicios/auditoria-geo-seo/index.html",
    "precios/index.html",
    "casos/index.html",
    "casos/coordinadora/index.html"
)

$replacements = @{
    "Ã©" = "é"
    "Ã" + [char]0xad = "í"
    "Ã" + [char]0xa1 = "á"
    "Ã" + [char]0xb3 = "ó"
    "Ã" + [char]0xba = "ú"
    "Ã" + [char]0xb1 = "ñ"
    "Â¡" = "¡"
    "Â¿" = "¿"
}

foreach ($f in $files) {
    if (Test-Path $f) {
        $c = [System.IO.File]::ReadAllText((Get-Item $f).FullName)
        foreach ($key in $replacements.Keys) {
            $value = $replacements[$key]
            $c = $c.Replace($key, $value)
        }
        [System.IO.File]::WriteAllText((Get-Item $f).FullName, $c, (New-Object System.Text.UTF8Encoding $false))
        Write-Host "Fixed: $f"
    }
}
