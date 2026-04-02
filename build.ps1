# Script de Construcción para Entornos Windows (PowerShell)
# Lee las variables desde .env y las inyecta en todos los .html

$envFile = ".env"
$exampleFile = ".env.example"

if (-not (Test-Path $envFile)) {
    if (Test-Path $exampleFile) {
        Copy-Item $exampleFile -Destination $envFile
        Write-Host "Warning: .env no existía. Se ha creado a partir de .env.example. Por favor, llénelo." -ForegroundColor Yellow
    }
}

$vars = @{}
if (Test-Path $envFile) {
    Get-Content $envFile | Where-Object { $_ -match "^([^#].+?)=(.*)$" } | ForEach-Object {
        $vars[$Matches[1]] = $Matches[2].Trim()
    }
}

Write-Host "Inyectando variables de entorno en archivos HTML..." -ForegroundColor Cyan

$utf8NoBom = New-Object System.Text.UTF8Encoding $False

Get-ChildItem -Path . -Recurse -Filter "*.html" | ForEach-Object {
    $fullPath = $_.FullName
    $content = [System.IO.File]::ReadAllText($fullPath, $utf8NoBom)
    $modified = $false
    
    foreach ($key in $vars.Keys) {
        $placeholder = "__$key`__"
        if ($content -match $placeholder) {
            $content = $content -replace $placeholder, $vars[$key]
            $modified = $true
        }
    }
    
    if ($modified) {
        [System.IO.File]::WriteAllText($fullPath, $content, $utf8NoBom)
        Write-Host " -> Procesado: " -NoNewline
        Write-Host $_.Name -ForegroundColor Green
    }
}

Write-Host "¡Construcción finalizada!" -ForegroundColor Cyan
