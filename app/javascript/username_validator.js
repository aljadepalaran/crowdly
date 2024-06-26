const usernameInput = document.getElementById('username');
const usernameAlertContainer = document.getElementById('valid-username-alert');
usernameInput.addEventListener('input', () => {
  if(usernameAlertContainer){
    usernameAlertContainer.innerHTML = '' // clear existing alerts  
  }
  const apiUrl = 'api/v1/validate_username'
  fetch(`${apiUrl}?query=${encodeURIComponent(usernameInput.value)}`)
    .then(response => response.json())
    .then(data => {
      const status = data.status;
      const message = data.message;
      var color = status == 'taken' ? 'red' : 'green'
      usernameAlertContainer.innerHTML = `<div style="color: ${color};">${message}</div>`;
    })
    .catch(error => console.error('Error fetching posts:', error));
});
