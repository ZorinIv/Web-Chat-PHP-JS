function fetchGroups() {
    fetch('./pages/group.php')
    .then(response => response.json())
    .then(data => {
        const groups = document.getElementById('groups');
        groups.innerHTML = '';
        data.forEach(grp => {
            groups.innerHTML += `<div class="group_card" id="${grp.group_id}"><p>Группа: ${grp.group_name}</p></div>`;
        });
    }).catch(error => console.error('Ошибка:', error));
}
function addGroup() {
    const name = document.getElementById('group').value.trim();
    if(name) {
        fetch('./pages/group.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: `name=${encodeURIComponent(name)}`
        })
        .then(response => {
            if(response.ok) {
                document.getElementById('group').value = '';
                fetchGroups();
            }
        })
        .catch(error => console.error('Ошибка:', error));
    }
}
fetchGroups();