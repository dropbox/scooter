---

title: Variables

---

## Colors

### $DBGlobalColors

`$DBGlobalColors` is the variable for Dropbox's color palette. It's actually a
Sass map containing white, black, and five distinct colors, each in five shades.

It's not intended to be accessed or used directly, but instead via the [`color`
function](functions.html#color($name,-[$shade,-$alpha])).


### $DBGrayscaleColors

`$DBGrayscaleColors` is a map of ten predefined gray colors. Again, it should
not be accessed directly, but instead using the [`grayscale`
function](functions.html#grayscale($gradation,-[$alpha:-1])).


## Units

### $DBBaseline

`$DBBaseline` is the baseline height for Scooter. Changing this variable changes
the values for many components and utilities.


### $DBFontSize

`$DBFontSize` is the root element font size. Changing this unit affects font
sizes across Scooter.
