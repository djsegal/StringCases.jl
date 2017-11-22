# Case

[![Build Status](https://travis-ci.org/djsegal/Case.jl.svg?branch=master)](https://travis-ci.org/djsegal/Case.jl) [![codecov.io](http://codecov.io/github/djsegal/Case.jl/coverage.svg?branch=master)](http://codecov.io/github/djsegal/Case.jl?branch=master)

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

#### underscore(cur_string)

```julia

cur_string = "foo_bar_baz"

underscore("fooBarBaz")
# => "foo_bar_baz"

underscore("foo bar baz")
# => "foo_bar_baz"

underscore("foo-bar-baz")
# => "foo_bar_baz"

```
