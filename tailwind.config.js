/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./about/**/*.html",
    "./proyectos/**/*.html",
    "./servicios/**/*.html",
    "./blog/**/*.html",
    "./assets/js/**/*.js"
  ],
  theme: {
    extend: {
      colors: {
        'bg-base': '#0c0d12',
        'bg-panel': '#13151f',
        'border-dim': '#1f2231',
        'accent-cyan': '#00bcd4',
        'accent-orange': '#ff5722',
      },
      fontFamily: {
        oswald: ['Oswald', 'sans-serif'],
        montserrat: ['Montserrat', 'sans-serif'],
        mono: ['Roboto Mono', 'monospace'],
        fira: ['Fira Code', 'monospace'],
      },
    },
  },
  plugins: [],
}
