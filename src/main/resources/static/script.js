
document.querySelectorAll('.product-image-container').forEach(function (container) {
    container.addEventListener('mouseover', function () {
        this.querySelector('.product-hover-image').style.opacity = '1';
        this.querySelector('.quick-add').style.opacity = '1';
        this.querySelector('.quick-add').style.bottom = '0';
    });
    container.addEventListener('mouseout', function () {
        this.querySelector('.product-hover-image').style.opacity = '0';
        this.querySelector('.quick-add').style.opacity = '0';
        this.querySelector('.quick-add').style.bottom = '0px';
    });
});
var swiper = new Swiper(".mySwiper", {});
