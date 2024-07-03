function fetchContacts() {
    fetch('./pages/contact.php')
    .then(response => response.json())
    .then(data => {
        const contacts = document.getElementById('contacts');
        contacts.innerHTML = '';
        data.forEach(cnt => {
            contacts.innerHTML += `<div class="user_card" id="${cnt.user_id}"><p>Имя: ${cnt.name}</p><p>Почта: ${cnt.email}</p></div>`;
        });
    }).catch(error => console.error('Ошибка:', error));
}
function addContact() {
    const email = document.getElementById('add').value.trim();
    if(email) {
        fetch('./pages/contact.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `email=${encodeURIComponent(email)}`
        })
        .then(response => {
            if(response.ok) {
                document.getElementById('add').value = '';
                fetchContacts();
            }
        })
        .catch(error => console.error('Ошибка:', error));
    }
}
fetchContacts();