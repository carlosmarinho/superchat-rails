var btn = document.querySelector('#btn-square');
var container = document.querySelector('.list-image-square');

btn.addEventListener('click', function () {
    if (container.style.display === 'block') {
        container.style.display = 'none';
    } else {
        container.style.display = 'block';
    }

    console.log('o que', container);
});
