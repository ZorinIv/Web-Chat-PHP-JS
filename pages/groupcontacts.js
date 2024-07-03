let group = -1;
document.body.addEventListener("click", function (event) {
  const elem = event.target.closest(".group_card");
  if (elem) {
      group = elem.id;
      console.log(group);
      fetchContacts();
  }
});

function fetchContacts() {
    fetch('./pages/groupcontact.php')
    .then(response => response.json())
    .then(data => {
        const contacts = document.getElementById('contacts');
        contacts.innerHTML = '';
        data.forEach(cnt => {
            if(cnt.group_id == group){
                contacts.innerHTML += `<div class="user_card" id="${cnt.user_id}"><p>Имя: ${cnt.name}</p><p>Почта: ${cnt.email}</p></div>`;
            }
        });
    });
}
function addContact() {
    const email = document.getElementById('contact').value.trim();
    if(email) {
        fetch('./pages/groupcontact.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `group=${encodeURIComponent(group)}&email=${encodeURIComponent(email)}`
        })
        .then(response => {
            if(response.ok) {
                document.getElementById('contact').value = '';
                fetchContacts();
            }
        })
        .catch(error => console.error('Ошибка:', error));
    }
}