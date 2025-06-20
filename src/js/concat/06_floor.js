window.addEventListener('load', () => {
    const menuItems = document.querySelectorAll('.filtermenu__section-container-ul-li');
    const cards = document.querySelectorAll('.filtermenu__section-cards-card');

    console.log('Načtené dlaždice:', cards.length);


    menuItems.forEach(menuItem => {
        menuItem.addEventListener('click', () => {
        const status = menuItem.getAttribute('data-status');

        menuItems.forEach(mi => mi.classList.remove('active'));
        menuItem.classList.add('active');

        cards.forEach(card => {
            const cardStatus = card.getAttribute('data-status');
            if (status === 'all' || cardStatus === status) {
            card.style.display = 'block';
            } else {
            card.style.display = 'none';
            }
        });
        });
    });

    cards.forEach(card => {
        const statusRaw = card.getAttribute('data-status') || '';
        console.log('Karta status:', statusRaw);

        const status = statusRaw.toLowerCase().trim();

        const rezervaceText = card.querySelector('.overlay--rezervace');
        const volneText = card.querySelector('.overlay--volne');

        if (status === 'rezervace') {
            if (rezervaceText) rezervaceText.style.display = 'block';
            if (volneText) volneText.style.display = 'none';
            } else {
            if (rezervaceText) rezervaceText.style.display = 'none';
            if (volneText) volneText.style.display = 'block';
        }
    });
});


