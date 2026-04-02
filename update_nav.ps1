$navTemplate = @"
    <!-- ===================== TOP NAVIGATION ===================== -->
    <nav x-data="{ open: false }" class="w-full border-b border-border-dim bg-bg-base/90 backdrop-blur-md fixed top-0 z-50 transition-all duration-300">
        <div class="absolute bottom-0 left-0 w-full h-[2px] bg-transparent pointer-events-none">
            <div id="scroll-progress-horizontal" class="h-full bg-accent-cyan shadow-[0_0_10px_rgba(0,188,212,0.8)] w-0"></div>
        </div>
        <div class="max-w-6xl mx-auto px-4 sm:px-6 h-16 flex items-center justify-between">
            <a href="{P}index.html" class="flex items-center gap-2 group">
                <div class="w-8 h-8 rounded-[2px] border border-accent-cyan flex items-center justify-center group-hover:bg-accent-cyan/10 transition-colors">
                    <span class="font-oswald text-accent-cyan text-sm font-bold">IF</span>
                </div>
                <span class="font-oswald text-lg tracking-wider font-bold text-white hidden sm:block">INGE FONSI</span>
            </a>
            
            <!-- Desktop Menu -->
            <div class="hidden md:flex items-center gap-6 font-mono text-xs uppercase tracking-wider">
                <a href="{P}index.html" class="text-text-muted hover:text-white transition-colors">Inicio</a>
                <a href="{P}servicios/index.html" class="text-text-muted hover:text-white transition-colors">Servicios</a>
                <a href="{P}precios/index.html" class="text-text-muted hover:text-white transition-colors">Precios</a>
                <a href="{P}casos/index.html" class="text-text-muted hover:text-white transition-colors">Casos</a>
                <a href="{P}index.html#contact" class="text-accent-cyan hover:text-white transition-colors border border-accent-cyan px-4 py-1.5 rounded-[2px] bg-accent-cyan/10 hover:bg-accent-cyan">Contacto</a>
            </div>

            <!-- Mobile Hamburger -->
            <button @click="open = !open" class="md:hidden text-white flex items-center">
                <i data-lucide="menu" class="w-6 h-6" x-show="!open"></i>
                <i data-lucide="x" class="w-6 h-6" x-show="open" x-cloak></i>
            </button>
        </div>

        <!-- Mobile Menu -->
        <div x-show="open" x-transition x-cloak class="md:hidden border-t border-border-dim bg-bg-panel absolute w-full left-0 top-16 shadow-2xl">
            <div class="flex flex-col p-6 gap-6 font-mono text-sm uppercase tracking-wider">
                <a href="{P}index.html" class="text-white flex items-center gap-3"><i data-lucide="home" class="w-4 h-4"></i> Inicio</a>
                <a href="{P}servicios/index.html" class="text-text-muted hover:text-accent-cyan flex items-center gap-3"><i data-lucide="layers" class="w-4 h-4"></i> Servicios</a>
                <a href="{P}precios/index.html" class="text-text-muted hover:text-accent-cyan flex items-center gap-3"><i data-lucide="tag" class="w-4 h-4"></i> Precios</a>
                <a href="{P}casos/index.html" class="text-text-muted hover:text-accent-cyan flex items-center gap-3"><i data-lucide="briefcase" class="w-4 h-4"></i> Casos de Estudio</a>
                <a href="{P}index.html#contact" class="text-accent-cyan flex items-center gap-3"><i data-lucide="mail" class="w-4 h-4"></i> Contacto</a>
            </div>
        </div>
    </nav>
"@

$files = @(
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

foreach ($filePath in $files) {
    if (Test-Path $filePath) {
        $fullPath = (Get-Item $filePath).FullName
        $utf8NoBom = New-Object System.Text.UTF8Encoding $False
        $content = [System.IO.File]::ReadAllText($fullPath, $utf8NoBom)
        
        # Determinar el prefijo basado en los slashes
        $slashes = ($filePath.ToCharArray() | Where-Object { $_ -eq '/' }).Count
        $prefix = ""
        for ($i=0; $i -lt $slashes; $i++) {
            $prefix += "../"
        }

        # Aplicar prefijo al template
        $customNav = $navTemplate.Replace("{P}", $prefix)

        # Usar regex para reemplazar <nav>...</nav>
        # El patrón asume que <nav y </nav> encapsulan la barra. \s* coinciden con espacios/newlines.
        $regex = [regex]::new("(?s)<nav.*?</nav>")
        if ($content -match "(?s)<nav.*?</nav>") {
            $newContent = $regex.Replace($content, $customNav, 1) # rmpolo primer nav
            [System.IO.File]::WriteAllText($fullPath, $newContent, $utf8NoBom)
            Write-Host "Nav updated in $filePath" -ForegroundColor Green
        } else {
            Write-Host "Warning: No nav element found in $filePath" -ForegroundColor Yellow
        }
    } else {
        Write-Host "File not found: $filePath" -ForegroundColor Red
    }
}
