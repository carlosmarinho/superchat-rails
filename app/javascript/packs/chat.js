const btn = document.querySelector('#btn-square');
const container = document.querySelector('.list-image-square');

const btn2 = document.querySelector('#btn-more');
const container2 = document.querySelector('.list-image-more');

const conversations = document.querySelectorAll('.conversation');
const chat = document.querySelector('.content-chat');

const back = document.querySelector('.header-icons-2');

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

const backConversation = document.getElementById('back-to-conversation');
backConversation.addEventListener('click', function () {
  const conversation = document.querySelector('.conversation-content');
  conversation.style.display = 'block';

  const chat = document.querySelector('.chat-content');
  chat.style.display = 'none';
});

const sendButton = document.getElementById('send-button');
sendButton.addEventListener('click', function () {
  const chat = document.querySelector('.content-chat');
  const text = document.getElementById('input-footer').value;
  const avatar = document.querySelector('.profile-2 img').src;

  chat.innerHTML += `<div class="chat profile-2"><img src="${avatar}"><p>${text}</p><span>${new Date()}</span></div>`;
  document.getElementById('input-footer').value = '';
  // window.scrollBottom();
});
