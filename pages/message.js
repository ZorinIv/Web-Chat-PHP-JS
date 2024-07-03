const header = document.getElementsByTagName('header');
const user = header[0].id;
console.log(user);
let contact = -1;
document.body.addEventListener("click", function (event) {
  const elem = event.target.closest(".user_card");
  if (elem) {
      contact = elem.id;
  }
});

function fetchMessages() {
  fetch('./pages/message.php')
  .then(response => response.json())
  .then(data => {
      const chat = document.getElementById('chat');
      chat.innerHTML = '';
      data.forEach(msg => {
          if((msg.from_id == user && msg.for_id == contact) || (msg.from_id == contact && msg.for_id == user)){
          if(msg.from_id == user){
              chat.innerHTML += `<div class="message" style="margin-left: auto"><strong>${msg.from_name}:</strong><i>${msg.message}</i><small>${msg.datetime}</small><div>`;
          }else{
            chat.innerHTML += `<div class="message" style="margin-right: auto"><strong>${msg.from_name}:</strong><i>${msg.message}</i><small>${msg.datetime}</small><div>`;
          }
        }
     });
  });
}

function sendMessage() {
  if(contact>-1){
    const message = document.getElementById('message').value.trim();
  if(message) {
      fetch('./pages/message.php', {
          method: 'POST',
          headers: {
              'Content-Type': 'application/x-www-form-urlencoded',
          },
          body: `for_id=${encodeURIComponent(contact)}&message=${encodeURIComponent(message)}`
      })
      .then(response => {
          if(response.ok) {
              document.getElementById('message').value = '';
              fetchMessages(contact);
          }
      })
      .catch(error => console.error('Ошибка:', error));
  }
  }
}

  setInterval(fetchMessages, 1000);
