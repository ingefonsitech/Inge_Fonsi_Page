/**
 * main.js — Inge Fonsi Landing
 * Responsabilidades:
 * 1. Inicializar animaciones de scroll (GSAP + ScrollTrigger)
 * 2. Manejar lógica de Alpine.js para interactividad (formularios, tabs)
 * 3. Controlar efectos de telemetría y contadores
 * 4. Gestión de transiciones de fondo
 */

// Registrar ScrollTrigger

gsap.registerPlugin(ScrollTrigger);

document.addEventListener('DOMContentLoaded', () => {
    // System initialized (Producción)

    // Animación de entrada inicial del Hero (KERN style)
    const heroTl = gsap.timeline();

    // Ocultar elementos para inicializar
    gsap.set(['#hero-label', '#hero-desc', '#hero-ctas', '#scroll-indicator'], { opacity: 0, y: 20 });
    gsap.set('.hero-word', { y: '100%', opacity: 0 });

    heroTl.to('.hero-word', {
        y: '0%',
        opacity: 1,
        duration: 1.2,
        stagger: 0.15,
        ease: 'expo.out'
    })
        .to(['#hero-label', '#hero-desc', '#hero-ctas', '#scroll-indicator'], {
            opacity: 1,
            y: 0,
            duration: 0.8,
            stagger: 0.1,
            ease: 'power3.out'
        }, "-=0.6");

    // Efecto texto KERN en Scroll
    // Aplicamos el scroll al contendor padre para no generar conflictos con la animación de entrada
    gsap.to('#hero-scroll-fade', {
        y: -100,
        opacity: 0,
        scale: 0.95,
        scrollTrigger: {
            trigger: '#hero',
            start: 'top top',
            end: 'center top',
            scrub: 1
        }
    });

    gsap.to('#scroll-indicator-wrap', {
        opacity: 0,
        y: -30,
        scrollTrigger: {
            trigger: '#hero',
            start: 'top top',
            end: 'center top',
            scrub: 1
        }
    });

    // === FASE 4: Transición de fondo en 3 etapas MÁS EVIDENTE ===
    ScrollTrigger.create({
        trigger: '#services',
        start: 'top 60%',
        onEnter: () => gsap.to('body', { backgroundColor: '#000000', duration: 1.5, overwrite: "auto" }),
        onLeaveBack: () => gsap.to('body', { backgroundColor: '#0c0d12', duration: 1.5, overwrite: "auto" })
    });

    ScrollTrigger.create({
        trigger: '#contact',
        start: 'top 60%',
        onEnter: () => gsap.to('body', { backgroundColor: '#08121f', duration: 1.5, overwrite: "auto" }),
        onLeaveBack: () => gsap.to('body', { backgroundColor: '#000000', duration: 1.5, overwrite: "auto" })
    });

    // === FASE 4: Fade-up en elementos de texto e imágenes (secciones) ===
    const fadeElements = gsap.utils.toArray('section:not(#hero) .section-label, section:not(#hero) h2, section:not(#hero) .font-mono > p, section:not(#hero) .panel-ff, section:not(#hero) .relative > h3, section:not(#hero) form');

    fadeElements.forEach(el => {
        gsap.fromTo(el,
            { opacity: 0, y: 40 },
            {
                opacity: 1,
                y: 0,
                duration: 0.8,
                ease: "power3.out",
                scrollTrigger: {
                    trigger: el,
                    start: "top 85%",
                    toggleActions: "play none none none"
                }
            }
        );
    });

    // === FASE 4: Animación de contadores e inicialización de telemetría ===
    const counters = document.querySelectorAll('.counter');
    counters.forEach(counter => {
        const target = parseInt(counter.getAttribute('data-target'), 10);
        animateCounter(counter, target);
    });

    // === Telemetría HUD (Barras de progreso Horizontal y Vertical) ===
    gsap.to('#scroll-progress-vertical', {
        height: '100%',
        ease: 'none',
        scrollTrigger: {
            trigger: document.documentElement,
            start: 'top top',
            end: 'bottom bottom',
            scrub: 1
        }
    });

    gsap.to('#scroll-progress-horizontal', {
        width: '100%',
        ease: 'none',
        scrollTrigger: {
            trigger: document.documentElement,
            start: 'top top',
            end: 'bottom bottom',
            scrub: 1
        }
    });
});

/**
 * Función para animar contadores numéricos
 * @param {HTMLElement} el - Elemento a animar
 * @param {number} target - Valor final
 */
const animateCounter = (el, target) => {
    let obj = { val: 0 };
    gsap.to(obj, {
        val: target,
        duration: 2.5,
        ease: "power3.out",
        scrollTrigger: {
            trigger: el,
            start: "top 90%",
            toggleActions: "play none none none"
        },
        onUpdate: () => {
            el.innerHTML = Math.floor(obj.val) + (target > 1000 ? "+" : "");
        }
    });
};
