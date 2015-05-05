---

title: Mixins

---

## Properties
### share($property, [$property...,] $value)
Outputs multiple `$property` values with the same value. For example:

```scss
// Input:
share(padding-top, padding-bottom, 20px);

// Output:
padding-top: 20px;
padding-bottom: 20px;
```


## Arrow
### arrow($size: 10px, $color: inherit, $direction: down)
Makes a CSS arrow shape. `$direction` can be one of the following, and affects
the direction the arrow points in:

- down (default)
- up
- left
- right
