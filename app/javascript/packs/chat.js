var btn = document.querySelector('#btn-square');
var container = document.querySelector('.list-image-square');

var btn2 = document.querySelector('#btn-more');
var container2 = document.querySelector('.list-image-more');

var conversations = document.querySelectorAll('.conversation');
var chat = document.querySelector('.content-chat');

var back = document.querySelector('.header-icons-2');

btn.addEventListener('click', function () {
    if (container.style.display === 'block') {
        container.style.display = 'none';
    } else {
        container.style.display = 'block';
    }
});

btn2.addEventListener('click', function () {
    if (container2.style.display === 'block') {
        container2.style.display = 'none';
    } else {
        container2.style.display = 'block';
    }
});

conversations.forEach((conversation) => {
    conversation.addEventListener('click', function () {
        // comentei aqui tenho q ver como vai ficar com essa seta ou não
        // if (chat.style.display === 'block') {
        //   chat.style.display = 'none';
        // } else {
        //   chat.style.display = 'block';
        // }

        window.location = `/?id=${conversation.dataset.conversationId}`;
    });
});

back.addEventListener('click', function () {
    if (chat.style.display === 'none') {
        chat.style.display = 'block';
    }
});

function Send() {
    var env = document.getElementById('input-footer').value;

    console.log('o que é isso...', env);
}
