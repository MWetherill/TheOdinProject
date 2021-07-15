

var messagesRef = firebase.database().ref('messages');

// listen for form submit
document.getElementById('contactForm').addEventListener('submit', submitForm);

// submit form
function submitForm(e) {
  e.preventDefault();
  
  // get values
  var fname = getInputVal('fname');
  var lname = getInputVal('lname');

  // save message
  saveMessage(fname, lname);
}

// function to get form values
function getInputVal(id) {
  return document.getElementById(id).value;
}

// save message to firebase
function saveMessage(fname, lname) {
  var newMessageRef = messagesRef.push();
  newMessageRef.set({
    fname: fname,
    lname: lname
  });
}