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

