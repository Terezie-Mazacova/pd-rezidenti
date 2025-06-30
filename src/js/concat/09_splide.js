document.addEventListener( 'DOMContentLoaded', function() {
    var splide = new Splide( '.splide', {
        perPage: 3,
        pagination: false,
        perMove: 1,
        gap: '6rem',
        width: '100%',
        breakpoints: {
            1200: {
                perPage: 3,
                gap: '1.5rem',
            },
            992: {
                perPage: 2,
                gap: '1rem',
            },
            768: {
                perPage: 1,
                gap: '0.5rem',
            }
        }
    } );
    splide.mount();
} );