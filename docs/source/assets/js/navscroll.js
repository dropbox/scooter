var navBar = document.querySelector('.sc-site__nav');
var activeLink = document.querySelector('.is-active');


navBar.scrollLeft = (activeLink.parentNode.offsetLeft - 30);
