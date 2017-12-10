# StringCases

[![Build Status](https://travis-ci.org/djsegal/StringCases.jl.svg?branch=master)](https://travis-ci.org/djsegal/StringCases.jl) [![codecov.io](http://codecov.io/github/djsegal/StringCases.jl/coverage.svg?branch=master)](http://codecov.io/github/djsegal/StringCases.jl?branch=master)

simple string helper methods for julia

// inspired by ember.js [string helpers](www.emberjs.com/api/classes/Ember.String.html)

## Usage

#### blankcase(cur_string)

```julia

cur_string = " foo-BAR  bAZ"

spacecase(cur_string)
# => "foo bar baz"

pascalcase(cur_string)
# => "FooBarBaz"

camelcase(cur_string)
# => "fooBarBaz"

snakecase(cur_string)
# => "foo_bar_baz"

kebabcase(cur_string)
# => "foo-bar-baz"

```

#### transformcase(cur_string)

```julia

cur_string = "css-class-name"

camelize("css-class-name")
# => "cssClassName"

capitalize("css-class-name")
# => "Css-class-name"

classify("css-class-name")
# => "CssClassName"

dasherize("css-class-name")
# => "css-class-name"

underscore("css-class-name")
# => "css_class_name"

```
