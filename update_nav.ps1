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
                
                <div class="relative group" x-data="{ dropdownOpen: false }" @mouseenter="dropdownOpen = true" @mouseleave="dropdownOpen = false">
                    <a href="{P}servicios/index.html" class="text-text-muted hover:text-white transition-colors flex items-center gap-1">
                        Servicios <i data-lucide="chevron-down" class="w-3 h-3 group-hover:rotate-180 transition-transform"></i>
                    </a>
                    <div x-show="dropdownOpen" x-transition x-cloak class="absolute top-full left-0 mt-4 w-56 bg-bg-panel border border-border-dim shadow-xl rounded-[2px] py-2 z-50">
                        <div class="absolute -top-4 left-0 w-full h-4"></div>
                        <a href="{P}servicios/seo-geo-ingenieria/index.html" class="block px-4 py-2 text-text-muted hover:text-accent-cyan hover:bg-bg-base transition-colors">Ingenier&iacute;a SEO + GEO</a>
                        <a href="{P}servicios/agente-ia-whatsapp/index.html" class="block px-4 py-2 text-text-muted hover:text-accent-cyan hover:bg-bg-base transition-colors">Agente IA WhatsApp</a>
                        <a href="{P}servicios/chatbot-ia-empresarial/index.html" class="block px-4 py-2 text-text-muted hover:text-accent-cyan hover:bg-bg-base transition-colors">Chatbots Especializados</a>
                        <a href="{P}servicios/desarrollo-web-bogota/index.html" class="block px-4 py-2 text-text-muted hover:text-accent-cyan hover:bg-bg-base transition-colors">Desarrollo Web Pro</a>
                        <a href="{P}servicios/workshops-ia-equipos/index.html" class="block px-4 py-2 text-text-muted hover:text-accent-cyan hover:bg-bg-base transition-colors">Workshops IA</a>
                        <a href="{P}servicios/consultoria-auditoria-ia/index.html" class="block px-4 py-2 text-text-muted hover:text-accent-cyan hover:bg-bg-base transition-colors">Auditor&iacute;as 1a1</a>
                    </div>
                </div>

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
        <div x-show="open" x-transition x-cloak class="md:hidden border-t border-border-dim bg-bg-panel absolute w-full left-0 top-16 shadow-2xl overflow-y-auto max-h-[80vh]">
            <div class="flex flex-col p-6 gap-6 font-mono text-sm uppercase tracking-wider">
                <a href="{P}index.html" class="text-white flex items-center gap-3"><i data-lucide="home" class="w-4 h-4"></i> Inicio</a>
                
                <div x-data="{ servOpen: false }">
                    <div class="flex items-center justify-between text-text-muted hover:text-accent-cyan cursor-pointer" @click="servOpen = !servOpen">
                        <a href="{P}servicios/index.html" class="flex items-center gap-3" @click.stop><i data-lucide="layers" class="w-4 h-4"></i> Servicios</a>
                        <button class="p-1"><i data-lucide="chevron-down" class="w-4 h-4 transition-transform" :class="servOpen ? 'rotate-180' : ''"></i></button>
                    </div>
                    <div x-show="servOpen" x-transition x-cloak class="pl-7 flex flex-col gap-4 border-l border-border-dim ml-2 mt-4 text-xs">
                        <a href="{P}servicios/seo-geo-ingenieria/index.html" class="text-text-muted hover:text-accent-cyan">Ingenier&iacute;a SEO + GEO</a>
                        <a href="{P}servicios/agente-ia-whatsapp/index.html" class="text-text-muted hover:text-accent-cyan">Agente IA WhatsApp</a>
                        <a href="{P}servicios/chatbot-ia-empresarial/index.html" class="text-text-muted hover:text-accent-cyan">Chatbots Especializados</a>
                        <a href="{P}servicios/desarrollo-web-bogota/index.html" class="text-text-muted hover:text-accent-cyan">Desarrollo Web Pro</a>
                        <a href="{P}servicios/workshops-ia-equipos/index.html" class="text-text-muted hover:text-accent-cyan">Workshops IA</a>
                        <a href="{P}servicios/consultoria-auditoria-ia/index.html" class="text-text-muted hover:text-accent-cyan">Auditor&iacute;as 1a1</a>
                    </div>
                </div>

                <a href="{P}precios/index.html" class="text-text-muted hover:text-accent-cyan flex items-center gap-3"><i data-lucide="tag" class="w-4 h-4"></i> Precios</a>
                <a href="{P}casos/index.html" class="text-text-muted hover:text-accent-cyan flex items-center gap-3"><i data-lucide="briefcase" class="w-4 h-4"></i> Casos de Estudio</a>
                <a href="{P}index.html#contact" class="text-accent-cyan flex items-center gap-3"><i data-lucide="mail" class="w-4 h-4"></i> Contacto</a>
            </div>
        </div>
    </nav>
"@

$whatsappTemplate = @"
    <!-- WhatsApp Floating Button -->
    <div class="fixed bottom-10 left-6 md:bottom-8 md:left-8 z-[70] flex items-center group">
        <a href="https://wa.me/__WHATSAPP_NUMBER__?text=Hola%20Oscar%2C%20vengo%20de%20tu%20sitio%20web%20Inge%20Fonsi.%20Me%20interesa%20saber%20m%C3%A1s..."
            target="_blank"
            class="flex items-center justify-center w-14 h-14 bg-accent-cyan rounded-full text-black hover:bg-accent-orange transition-all duration-300 animate-pulse-cyan shadow-[0_0_20px_rgba(0,188,212,0.4)] z-10"
            title="Escr&iacute;beme directo">
            <i data-lucide="message-circle" class="w-7 h-7"></i>
        </a>
        <div class="absolute left-10 pl-10 opacity-0 group-hover:opacity-100 transition-all duration-500 pointer-events-none md:relative md:left-auto md:pl-0 md:opacity-100 whatsapp-bubble-wrapper">
             <div class="bg-bg-panel text-white text-[10px] font-mono uppercase px-3 py-2 rounded-[2px] border border-accent-cyan/30 shadow-[0_0_15px_rgba(0,0,0,0.5)] whitespace-nowrap tracking-widest animate-float-x whatsapp-bubble">
                &iexcl;Hablemos de tu proyecto!
            </div>
        </div>
    </div>
"@

$files = @(
    "index.html",
    "servicios/index.html",
    "servicios/seo-geo-ingenieria/index.html",
    "servicios/agente-ia-whatsapp/index.html",
    "servicios/chatbot-ia-empresarial/index.html",
    "servicios/desarrollo-web-bogota/index.html",
    "servicios/workshops-ia-equipos/index.html",
    "servicios/consultoria-auditoria-ia/index.html",
    "precios/index.html",
    "casos/index.html",
    "casos/coordinadora/index.html"
)

# Corruption Mapping (for maintenance)
$replacements = @{
    "Ã©" = "é"
    "Ã­" = "í"
    "Ã¡" = "á"
    "Ã³" = "ó"
    "Ãº" = "ú"
    "Ã±" = "ñ"
    "Â¡" = "¡"
    "Â¿" = "¿"
}

foreach ($filePath in $files) {
    if (Test-Path $filePath) {
        $fullPath = (Get-Item $filePath).FullName
        $utf8NoBom = New-Object System.Text.UTF8Encoding $False
        $content = [System.IO.File]::ReadAllText($fullPath, $utf8NoBom)
        
        # Determine prefix
        $slashes = ($filePath.ToCharArray() | Where-Object { $_ -eq '/' }).Count
        $prefix = ""
        for ($i=0; $i -lt $slashes; $i++) {
            $prefix += "../"
        }

        # Apply prefix to core templates
        $customNav = $navTemplate.Replace("{P}", $prefix)

        # Replacement for <nav>
        $content = [regex]::Replace($content, "(?s)<nav.*?</nav>", $customNav)

        # Replacement for WhatsApp button
        $waFixedRegex = "(?s)<div[^>]*fixed[^>]*>(?:(?!</div>).)*?wa\.me.*?</div>"
        if ($content -match $waFixedRegex) {
             $content = [regex]::Replace($content, $waFixedRegex, $whatsappTemplate)
        } else {
             if ($content -match "</body>") {
                $content = $content.Replace("</body>", "`n    $whatsappTemplate`n</body>")
             }
        }

        # Sanitization
        foreach ($key in $replacements.Keys) {
            $value = $replacements[$key]
            $content = $content.Replace($key, $value)
        }

        [System.IO.File]::WriteAllText($fullPath, $content, $utf8NoBom)
        Write-Host "Updated Nav & Robustness: $filePath" -ForegroundColor Green
    } else {
        Write-Host "File not found: $filePath" -ForegroundColor Red
    }
}
