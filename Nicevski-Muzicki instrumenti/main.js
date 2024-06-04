let cozv = document.getElementById('contrafagotZvuk');
let drzv = document.getElementById('drumsZvuk');
let guzv = document.getElementById('guitarZvuk');
let hazv = document.getElementById('harmonicaZvuk');
let pizv = document.getElementById('pianoZvuk');
let vizv = document.getElementById('violinZvuk');

function playSound(id) {
  switch (id) {
    case 'contrabassoon':
      cozv.play();
      break;
    case 'drums':
      drzv.play();
      break;
    case 'guitar':
      guzv.play();
      break;
    case 'harmonika':
      hazv.play();
      break;
    case 'piano':
      pizv.play();
      break;
    case 'violin':
      vizv.play();
      break;
    }
}
 
function stopSound(id) {
  switch (id) {
    case 'contrabassoon':
      cozv.pause();
      break;
    case 'drums':
      drzv.pause();
      break;
    case 'guitar':
      guzv.pause();
      break;
    case 'harmonika':
      hazv.pause();
      break;
    case 'piano':
      pizv.pause();
      break;
    case 'violin':
      vizv.pause();
      break;
  }
}