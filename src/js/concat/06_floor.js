document.addEventListener('DOMContentLoaded', () => {
    const menuItems = document.querySelectorAll('.filtermenu__section-container-ul-li');
    const cards = document.querySelectorAll('.filtermenu__section-cards-card');

    menuItems.forEach(menuItem => {
        menuItem.addEventListener('click', () => {
            const selectedStatus = menuItem.getAttribute('data-status')?.replace(/\u00a0/g, ' ').toLowerCase().trim();

            menuItems.forEach(mi => mi.classList.remove('active'));
            menuItem.classList.add('active');

            cards.forEach(card => {
                const cardStatus = card.getAttribute('data-status')?.replace(/\u00a0/g, ' ').toLowerCase().trim();

                const rezervaceText = card.querySelector('.overlay--rezervace');
                const volneText = card.querySelector('.overlay--volne');
                const titleIcon = card.querySelector('.filtermenu__section-cards-card-icon');

                if (selectedStatus === 'all' || selectedStatus === cardStatus) {
                    card.style.display = 'block';

                    if (cardStatus === 's rezervací') {
                        if (rezervaceText) rezervaceText.style.display = 'block';
                        if (volneText) volneText.style.display = 'block';
                        if (titleIcon) titleIcon.style.display = 'inline-block';
                    } else if (cardStatus === 'volné') {
                        if (rezervaceText) rezervaceText.style.display = 'none';
                        if (volneText) volneText.style.display = 'block';
                        if (titleIcon) titleIcon.style.display = 'none';
                    } else {
                        if (rezervaceText) rezervaceText.style.display = 'none';
                        if (volneText) volneText.style.display = 'none';
                        if (titleIcon) titleIcon.style.display = 'none';
                    }
                } else {
                    card.style.display = 'none';
                }
            });
        });
    });

    const allButton = document.querySelector('[data-status="all"]');
    if (allButton) {
        allButton.click();
    }
});













$(window).scroll(function(){
    if ($(window).scrollTop() > $('.map .map__text-item--1').offset().top - 500) {
        $('.map').removeClass('map--2');
        $('.map').addClass('map--1');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--2').offset().top - 500) {
        $('.map').removeClass('map--1');
        $('.map').removeClass('map--3');
        $('.map').addClass('map--2');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--3').offset().top - 500) {
        $('.map').removeClass('map--2');
        $('.map').removeClass('map--4');
        $('.map').addClass('map--3');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--4').offset().top - 500) {
        $('.map').removeClass('map--3');
        $('.map').removeClass('map--5');
        $('.map').addClass('map--4');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--5').offset().top - 500) {
        $('.map').removeClass('map--4');
        $('.map').removeClass('map--6');
        $('.map').addClass('map--5');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--6').offset().top - 500) {
        $('.map').removeClass('map--5');
        $('.map').removeClass('map--7');
        $('.map').addClass('map--6');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--7').offset().top - 500) {
        $('.map').removeClass('map--6');
        $('.map').removeClass('map--8');
        $('.map').addClass('map--7');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--8').offset().top - 500) {
        $('.map').removeClass('map--7');
        $('.map').removeClass('map--9');
        $('.map').addClass('map--8');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--9').offset().top - 500) {
        $('.map').removeClass('map--8');
        $('.map').removeClass('map--10');
        $('.map').addClass('map--9');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--10').offset().top - 500) {
        $('.map').removeClass('map--9');
        $('.map').removeClass('map--11');
        $('.map').addClass('map--10');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--11').offset().top - 500) {
        $('.map').removeClass('map--10');
        $('.map').removeClass('map--12');
        $('.map').addClass('map--11');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--12').offset().top - 500) {
        $('.map').removeClass('map--11');
        $('.map').removeClass('map--13');
        $('.map').addClass('map--12');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--13').offset().top - 500) {
        $('.map').removeClass('map--12');
        $('.map').removeClass('map--14');
        $('.map').addClass('map--13');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--14').offset().top - 500) {
        $('.map').removeClass('map--13');
        $('.map').removeClass('map--15');
        $('.map').addClass('map--14');
    }
    if ($(window).scrollTop() > $('.map .map__text-item--15').offset().top - 500) {
        $('.map').removeClass('map--14');
        $('.map').addClass('map--15');
    }
});


