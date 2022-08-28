var btn = document.querySelector('#btn-square');
var btn2 = document.querySelector('#btn-more');
var container = document.querySelector('.list-image-square');
var container2 = document.querySelector('.list-image-more');

btn.addEventListener('click', function () {
    if (container.style.display === 'block') {
        container.style.display = 'none';
    } else {
        container.style.display = 'block';
    }

    console.log('o que', container);
});

btn2.addEventListener('click', function () {
    if (container2.style.display === 'block') {
        container2.style.display = 'none';
    } else {
        container2.style.display = 'block';
    }

    console.log('o que', container2);
});
