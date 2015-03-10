# Aspirational Dropbox SCSS Principles

This is purposefully ambitious and aspirational.

## Separation of Concerns
The overarching philosophy with Dropbox SCSS is a separation of concerns. Components should live as independently as possible. Overrides and conflicting rules should be avoided and negated by abstractions. For example:

```scss
// Bad code
// HTML:
// <div class=“modal compact”></div>
.modal {
	padding: 32px;
	background-color: color(gray, x-light);

	&.compact {
		padding: 23px;
  }
}

// Good code
// HTML:
// <div class=“o-modal l-island”></div>
// <div class=“o-modal l-isle”></div>

// objects/_modal.scss
.o-modal {
  background-color: color(gray, x-light);
}

// helpers/_layout.scss
.l-island {
  padding: 32px;
}

.l-isle {
  padding: 23px;
}
```

## Partials And Organisation
The typical SCSS file structure looks like this:

- File: **global.scss** (imports partial importers)
- Directory: **partial/type name** (e.g. “variables”)
	- File: **__all.scss** (imports siblings)
	- File: **_file.scss** (self-contained, no imports)

The double-underscoring of partial importers is twofold:

1. It helps ensure that the importer is always the first file listed in file views, `ls`, etc.
2. It’s extremely explicit in its function—easy to spot the double-underscore and know that its only task is to import siblings.

## Namespaced Classes
Where possible, classes should be namespaced. This helps facilitate abstraction and style isolation, as well as assisting debugging and development.

```scss
// `.o-` for objects.
// For example, in objects/_modal.scss:
.o-modal { }

// `.c-` for components
// components/_buttons.scss
.c-btn { }

// `.f-` for font hooks and helpers
// base/_typography.scss
.f-alpha { }

// `.l-` for layout helpers
// helpers/_layout.scss
.l-island { }
```

## Deference to Variables
Unique and arbitrary colors and numbers should be avoided. Always favor defined units, functions, and variables.

```scss
// Bad code
a {
  color: #007ee5;
}

p {
  margin-bottom: 23px;
}

// Good code
a {
  color: color(main);
}

p {
  margin-bottom: $baseline;
}
```

## Grouping And Ordering For Properties And Nested Styles
Properties are grouped and ordered like so:

1. Layout and box-model properties
2. Typographic properties
3. Stylistic properties
4. UI properties
5. Pseudo-elements
6. Pseudo-selectors
7. Nested elements

Here’s a fairly comprehensive example:

```scss
.c-btn {
  display: inline-block;
  padding: 7px 12px;

  text-align: center;
  text-decoration: none;
  font-weight: 600;

  border: 1px solid;
  border-radius: 3px;

  cursor: pointer;

  &::before {
    content: none;
  }

  &:focus {
    outline: none;
    box-shadow: 0 0 0 2px rgba(color(main), .3);
  }

  > .c-icon {
    display: inline-block;
    vertical-align: middle;
  }
}
```

## Unit Values
Always prefer a unitless ‘0’ to ‘none’ where applicable.

```scss
// Bad code
.l-trim {
  margin: none;
}

// Good code
.l-trim {
  margin: 0;
}
```

