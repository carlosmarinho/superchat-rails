const container = document.querySelector('.list-image-square');

const btn2 = document.querySelector('#btn-more');
const container2 = document.querySelector('.list-image-more');

const conversations = document.querySelectorAll('.conversation');
const chat = document.querySelector('.content-chat');

const back = document.querySelector('.header-icons-2');

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
sendButton.addEventListener('click', async function () {
  const chat = document.querySelector('.content-chat');
  const text = document.getElementById('input-footer').value;
  const avatar = document.querySelector('.profile-2 img').src;
  const writer_id = document.getElementById('hidden_writer_id').value;
  const listener_id = document.getElementById('hidden_listener_id').value;
  const conversation_id = document.getElementById(
    'hidden_conversation_id'
  ).value;

  console.log('\n\n***\n wroterrr id: ', writer_id, '\n***\n');

  form = JSON.stringify({
    writer_id,
    listener_id,
    conversation_text: text,
    conversation_id,
  });

  const csrfToken = document.getElementsByName('csrf-token')[0].content;

  try {
    const response = await fetch('/my_new_api', {
      method: 'POST',
      headers: {
        'X-CSRF-Token': csrfToken,
        'Content-Type': 'application/json',
        Accept: 'application/json',
      },
      body: form,
    });

    if (response.status == 200) {
      chat.innerHTML += `<div class="chat profile-2"><img src="${avatar}"><p>${text}</p><span>${new Date()}</span></div>`;
      document.getElementById('input-footer').value = '';
      // window.scrollBottom();
    } else {
      /* @todo implement a modal showing the errors */
      alert('Oops something went wront!');
    }
  } catch (err) {
    /* @todo implement a modal showing the errors */
    alert('Oops something went wront!');
  }
});
