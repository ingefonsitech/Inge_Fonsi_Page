$footerTemplate = @"
    <!-- ===================== FOOTER ======================== -->
    <footer class="pt-12 pb-8 border-t border-border-dim bg-bg-panel flex flex-col relative z-20">
        <div class="container mx-auto px-4 max-w-6xl">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
                <!-- Branding & NAP (SEO Local) -->
                <div>
                    <h2 class="text-white font-oswald text-2xl uppercase tracking-widest mb-4">
                        Inge Fonsi
                    </h2>
                    <ul class="font-mono text-sm text-text-muted space-y-2">
                        <li class="flex items-center gap-2">
                            <i data-lucide="map-pin" class="w-4 h-4 text-accent-cyan"></i>
                            Bogot&aacute;, Colombia
                        </li>
                        <li class="flex items-center gap-2">
                            <i data-lucide="phone" class="w-4 h-4 text-accent-cyan"></i>
                            <a href="https://wa.me/__WHATSAPP_NUMBER__" class="hover:text-accent-cyan transition-colors">__WHATSAPP_NUMBER__</a>
                        </li>
                        <li class="flex items-center gap-2">
                            <i data-lucide="mail" class="w-4 h-4 text-accent-cyan"></i>
                            <a href="mailto:__CONTACT_EMAIL__" class="hover:text-accent-cyan transition-colors">__CONTACT_EMAIL__</a>
                        </li>
                    </ul>
                </div>

                <!-- Enlaces Silos -->
                <div>
                    <h3 class="text-white font-oswald text-lg uppercase tracking-wider mb-4 border-b border-border-dim pb-2 inline-block">
                        Servicios
                    </h3>
                    <ul class="font-mono text-sm text-text-muted space-y-3">
                        <li>
                            <a href="{P}servicios/seo-geo-ingenieria/index.html" class="hover:text-accent-cyan transition-colors flex items-center gap-2">
                                <i data-lucide="chevron-right" class="w-3 h-3 text-accent-cyan"></i>
                                Ingenier&iacute;a SEO + GEO
                            </a>
                        </li>
                        <li>
                            <a href="{P}servicios/desarrollo-web-bogota/index.html" class="hover:text-accent-cyan transition-colors flex items-center gap-2">
                                <i data-lucide="chevron-right" class="w-3 h-3 text-accent-cyan"></i>
                                Desarrollo Web Pro
                            </a>
                        </li>
                        <li>
                            <a href="{P}servicios/workshops-ia-equipos/index.html" class="hover:text-accent-cyan transition-colors flex items-center gap-2">
                                <i data-lucide="chevron-right" class="w-3 h-3 text-accent-cyan"></i>
                                Workshops IA
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Optimizaci&oacute;n IAs (GEO) & Socials -->
                <div>
                    <h3 class="text-white font-oswald text-lg uppercase tracking-wider mb-4 border-b border-border-dim pb-2 inline-block">
                        Redes Profesionales
                    </h3>
                    <div class="flex gap-4 mb-4">
                        <a href="__GITHUB_URL__" target="_blank" rel="me" class="group transition-all flex items-center justify-center w-10 h-10 border border-border-dim rounded-[2px] hover:border-accent-cyan hover:bg-accent-cyan/10">
                            <img src="https://img.icons8.com/material-outlined/24/ffffff/github.png" alt="GitHub" class="w-5 h-5 opacity-60 group-hover:opacity-100 group-hover:filter group-hover:drop-shadow-[0_0_8px_#00f5ff]">
                        </a>
                        <a href="__LINKEDIN_URL__" target="_blank" rel="me" class="group transition-all flex items-center justify-center w-10 h-10 border border-border-dim rounded-[2px] hover:border-accent-cyan hover:bg-accent-cyan/10">
                            <img src="https://img.icons8.com/ios-filled/50/ffffff/linkedin.png" alt="LinkedIn" class="w-5 h-5 opacity-60 group-hover:opacity-100 group-hover:filter group-hover:drop-shadow-[0_0_8px_#00f5ff]">
                        </a>
                        <a href="__TWITTER_URL__" target="_blank" rel="me" class="group transition-all flex items-center justify-center w-10 h-10 border border-border-dim rounded-[2px] hover:border-accent-cyan hover:bg-accent-cyan/10">
                            <img src="https://img.icons8.com/ios-filled/50/ffffff/twitterx--v1.png" alt="X" class="w-5 h-5 opacity-60 group-hover:opacity-100 group-hover:filter group-hover:drop-shadow-[0_0_8px_#00f5ff]">
                        </a>
                        <a href="__TIKTOK_URL__" target="_blank" rel="me" class="group transition-all flex items-center justify-center w-10 h-10 border border-border-dim rounded-[2px] hover:border-accent-cyan hover:bg-accent-cyan/10">
                            <img src="https://img.icons8.com/ios-filled/50/ffffff/tiktok--v1.png" alt="TikTok" class="w-5 h-5 opacity-60 group-hover:opacity-100 group-hover:filter group-hover:drop-shadow-[0_0_8px_#00f5ff]">
                        </a>
                    </div>
                    <p class="font-mono text-[10px] text-text-muted uppercase leading-relaxed">
                        Perfiles validados para se&ntilde;ales de identidad en motores de b&uacute;squeda generativa.
                    </p>
                </div>
            </div>

            <!-- Bottom Bar -->
            <div class="border-t border-border-dim pt-6 flex flex-col md:flex-row items-center justify-between gap-4">
                <div class="font-mono text-[10px] text-text-muted uppercase text-center md:text-left">
                    &copy; 2026 Oscar Alfonso Ochoa Caballero. Todos los derechos reservados.<br>
                    Hecho con ingenio. Mejorado con experiencia.
                </div>
                <div class="font-mono text-[10px] uppercase">
                    <a href="{P}sitemap.xml" class="text-text-muted hover:text-accent-cyan transition-colors flex items-center gap-1">
                        <i data-lucide="map" class="w-3 h-3"></i> Sitemap XML
                    </a>
                </div>
            </div>
        </div>
    </footer>
"@

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

        $customFooter = $footerTemplate.Replace("{P}", $prefix)

        # Replacement for <footer>
        if ($content -match "<footer.*?>") {
            $content = [regex]::Replace($content, "(?s)<footer.*?</footer>", $customFooter)
        }

        [System.IO.File]::WriteAllText($fullPath, $content, $utf8NoBom)
        Write-Host "Updated Footer: $filePath" -ForegroundColor Green
    }
}
