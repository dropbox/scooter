(function() {
  var color, h, i, a, avatars;

  avatars = document.querySelectorAll(".c-avatar--no-img");

  for (i = 0; i < avatars.length; i++) {
    a = avatars[i];
    h = Math.floor(Math.random() * 256);
    color = "hsl(" + h + ", 65%, 45%)";
    a.style.color = color;
  }

}).call(this);
