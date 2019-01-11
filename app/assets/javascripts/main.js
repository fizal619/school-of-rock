document.addEventListener("DOMContentLoaded", function(event) {
  console.log("DOM fully loaded and parsed");
  let reveal = document.querySelector('#show-form')
  let form = document.querySelector('#form')

  if (reveal) {
    reveal.addEventListener('click', function(){
      form.classList.toggle('hidden');
    });
  }
});