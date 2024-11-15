// JavaScript para el carrusel
let currentIndex = 0;
const images = document.querySelectorAll(".carousel-inner img");
const totalImages = images.length;

function showNextImage() {
    currentIndex = (currentIndex + 1) % totalImages; // Reinicia al llegar al final
    document.querySelector(".carousel-inner").style.transform = `translateX(-${currentIndex * 100}vw)`;
}

// Cambia de imagen cada 3 segundos
setInterval(showNextImage, 3000);
