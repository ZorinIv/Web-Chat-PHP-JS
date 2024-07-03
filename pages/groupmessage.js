let group_id = -1;
document.body.addEventListener("click", function (event) {
  const elem = event.target.closest(".group_card");
  if (elem) {
      group_id = elem.id;
      console.log(group);
      fetchContacts();
  }
});
const header = document.getElementsByTagName('header');
const user = header[0].id;
console.log(group_id);
console.log(user);

function fetchMessages() {
    fetch('./pages/groupmessage.php')
  .then(response => response.json())
  .then(data => {
    const chat = document.getElementById('chat');
      chat.innerHTML = '';
      data.forEach(msg => {
        if(msg.group_id == group_id){
          if(msg.user_id == user){
            chat.innerHTML += `<div class="message" style="margin-left: auto"><strong>${msg.name}:</strong><i>${msg.message}</i><small>${msg.datetime}</small><div>`;
          }else{
            chat.innerHTML += `<div class="message" style="margin-right: auto"><strong>${msg.name}:</strong><i>${msg.message}</i><small>${msg.datetime}</small><div>`;
          }
        }
     });
  });
}

function sendMessage() {
  
  const message = document.getElementById('message').value.trim();
  if(message) {
      fetch('./pages/groupmessage.php', {
          method: 'POST',
          headers: {
              'Content-Type': 'application/x-www-form-urlencoded',
          },
          body: `group=${encodeURIComponent(group)}&message=${encodeURIComponent(message)}`
      })
      .then(response => {
          if(response.ok) {
              document.getElementById('message').value = '';
              fetchMessages();
          }
      })
      .catch(error => console.error('Ошибка:', error));
  }
}

setInterval(fetchMessages, 1000);