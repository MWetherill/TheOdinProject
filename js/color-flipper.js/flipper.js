const rotate = document.querySelector('.rotate');
var current_rotation = 0;
var border_radius = 0;
var width = 300;
var height = 300;
var colors = ['yellow', 'orange', 'red', 'purple', 'blue', 'green'];

function rotateMate() {
  current_rotation += 1;
  border_radius += 1;
  width -= 1;
  height -= 1;
  console.log(current_rotation);
  console.log(border_radius);
  rotate.style.transform = 'rotate(' + current_rotation + 'deg)';
  rotate.style.background = colors[Math.floor(Math.random() * 6)];
  rotate.style.borderRadius = border_radius + 'px';
  rotate.style.width = width + 'px';
  rotate.style.height = height + 'px';
}

rotate.addEventListener('click', rotateMate);
rotate.addEventListener('mousedown', rotateMate);
rotate.addEventListener('mouseup', rotateMate);