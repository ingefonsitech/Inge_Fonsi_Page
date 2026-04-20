$files = @(
    "index.html",
    "about/index.html",
    "servicios/index.html",
    "servicios/seo-geo-ingenieria/index.html",
    "servicios/desarrollo-web-bogota/index.html",
    "servicios/workshops-ia-equipos/index.html",
    "proyectos/index.html",
    "blog/index.html"
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
