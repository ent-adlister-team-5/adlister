const backgroundCarouselElement = document.querySelector('#carouselBackground');
const foregroundCarouselElement = document.querySelector('#foregroundCarousel');

const backgroundCarousel = new bootstrap.Carousel(backgroundCarouselElement, {
    interval: 5000,
    touch: false,
    pause: false,
    ride: "carousel"
})
const foregroundCarousel = new bootstrap.Carousel(foregroundCarouselElement, {
    interval: 5000,
    touch: false,
    pause: false,
    ride: "carousel"
})