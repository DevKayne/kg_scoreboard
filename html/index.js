// Get Text //
let ambo = document.getElementById('ambo');
let police = document.getElementById('popo');
let taxi = document.getElementById('taxi');
let mech = document.getElementById('mech');

$(function() {
  $('.scoreboard').hide();
  window.addEventListener("message", function(event) {
    // Get Data //
    let data = event.data; 

    // Open Scoreboard //
    if (data.type === "opensb") {
      $('.scoreboard').show();
   } 

   // Close Scoreboard //
    if (data.type === "closesb") {
      $('.scoreboard').hide();
    }

    // Input Data //
    ambo.innerText = parseInt(data.medic)
    police.innerText = parseInt(data.police)
    taxi.innerText = parseInt(data.taxi)
    mech.innerText = parseInt(data.mechanic)
  })
})