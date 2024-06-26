const usernameInput = document.getElementById('username');
const usernameAlertContainer = document.getElementById('valid-username-alert');
usernameInput.addEventListener('input', () => {
  console.log('inpuit');
  if(usernameAlertContainer){
    usernameAlertContainer.innerHTML = '' // clear existing alerts  
  }
  const apiUrl = 'api/v1/validate_username'
  var usernameValue = encodeURIComponent(usernameInput.value)
  if(usernameValue.length == 0){
    const message = 'Username cannot be blank.'
    usernameAlertContainer.innerHTML = `<div style="color: red;">${message}</div>`;
  }else if(usernameValue.length < 5){
    const message = 'Username cannot be shorter than 5 characters.'
    usernameAlertContainer.innerHTML = `<div style="color: red;">${message}</div>`;
  }else{
    fetch(`${apiUrl}?query=${usernameValue}`)
    .then(response => response.json())
    .then(data => {
      const status = data.status;
      const message = data.message;
      var color = status == 'taken' ? 'red' : 'green'
      usernameAlertContainer.innerHTML = `<div style="color: ${color};">${message}</div>`;
    })
    .catch(error => console.error('Error fetching posts:', error));
  }
});
