---

title: Functions

---

## Maths

### half($number)
Divides a passed value by 2. Returns a whole number.

### quarter($number)
Divides a passed value by 4. Returns a whole number.

### double($number)
Multiplies a passed value by 2. Returns a whole number.

### quadruple($number)
Multiplies a passed value by 4. Returns a whole number.


## Colors

### grayscale($gradation, [$alpha: 1])
Returns a value from [`$DBGrayscaleColors`](variables.html#$dbgrayscalecolors).
Passing an `$alpha` value between `0.0` and `1.0` returns the color as an
`rgba` value.

### color($name, [$shade, $alpha])
Returns a value from [`$DBGlobalColors`](variables.html#$dbglobalcolors). With
only the `$name` parameter, the base shade is returned. The optional `$shade`
parameter can be one of the following:

- `x-dark`
- `dark`
- `base` (default)
- `medium`
- `light`
- `x-light`

The optional `$alpha` parameter can be between `0.0` and `1.0`. Passing an
`$alpha` value returns the color as an `rgba` value.


## Units

### stripUnit($value)
Accepts a number and returns the unitless value. Useful for getting unitless
versions of `em` values, for example.
