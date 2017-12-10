using Base.Test

using StringCases

import StringCases._defaultcase
import StringCases._decamelize

# -------------------
#  test plain string
# -------------------

test_string = "foo BAR bAZ"

@test _defaultcase(test_string) == "foo bar baz"

@test spacecase(test_string) == "foo bar baz"

@test pascalcase(test_string) == "FooBarBaz"

@test camelcase(test_string) == "fooBarBaz"

@test snakecase(test_string) == "foo_bar_baz"

@test kebabcase(test_string) == "foo-bar-baz"

# -------------
#  test delims
# -------------

test_string = "this_var-here"

@test _defaultcase(test_string) == "this var here"

@test spacecase(test_string) == "this var here"

@test pascalcase(test_string) == "ThisVarHere"

@test camelcase(test_string) == "thisVarHere"

@test snakecase(test_string) == "this_var_here"

@test kebabcase(test_string) == "this-var-here"

# -----------------
#  test underscore
# -----------------

test_string = "foo_bar_baz"

@test underscore("foo_bar_baz") == test_string

@test underscore("foo bar baz") == test_string

@test underscore("foo-bar-baz") == test_string

@test underscore("fooBarBaz") == test_string

@test underscore("FooBarBaz") == test_string

@test underscore("modelA") == "model_a"

@test underscore("ModelA") == "model_a"

@test underscore("aModel") == "a_model"

@test underscore("AModel") == "amodel"

# -----------------
#  test dasherize
# -----------------

test_string = "foo-bar-baz"

@test dasherize("foo_bar_baz") == test_string

@test dasherize("foo bar baz") == test_string

@test dasherize("foo-bar-baz") == test_string

@test dasherize("fooBarBaz") == test_string

@test dasherize("FooBarBaz") == test_string

@test dasherize("modelA") == "model-a"

@test dasherize("ModelA") == "model-a"

@test dasherize("aModel") == "a-model"

@test dasherize("AModel") == "amodel"

# -----------------
#  test decamelize
# -----------------

test_string = "foo_bar_baz"

@test _decamelize("foo_bar_baz") == test_string

@test _decamelize("foo bar baz") == "foo bar baz"

@test _decamelize("foo-bar-baz") == "foo-bar-baz"

@test _decamelize("fooBarBaz") == test_string

@test _decamelize("FooBarBaz") == test_string

@test _decamelize("modelA") == "model_a"

@test _decamelize("ModelA") == "model_a"

@test _decamelize("aModel") == "a_model"

@test _decamelize("AModel") == "amodel"

# -------------
#  test spaces
# -------------

test_string = "boo"

@test _defaultcase("boo") == test_string

@test _defaultcase("  boo") == test_string

@test _defaultcase("boo  ") == test_string

@test _defaultcase(" boo ") == test_string

# ============
#  tests from
#   ember.js
# ============

include("ember_js_test.jl")
