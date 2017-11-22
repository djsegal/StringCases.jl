using Case
using Base.Test

# -------------------
#  test plain string
# -------------------

test_string = "foo BAR bAZ"

@test Case._defaultcase(test_string) == "foo bar baz"

@test spacecase(test_string) == "foo bar baz"

@test pascalcase(test_string) == "FooBarBaz"

@test camelcase(test_string) == "fooBarBaz"

@test snakecase(test_string) == "foo_bar_baz"

@test kebabcase(test_string) == "foo-bar-baz"

# -------------
#  test delims
# -------------

test_string = "this_var-here"

@test Case._defaultcase(test_string) == "this var here"

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

@test underscore("foo-bar-baz") == test_string

@test underscore("fooBarBaz") == test_string

@test underscore("FooBarBaz") == test_string

@test underscore("modelA") == "model_a"

@test underscore("ModelA") == "model_a"

@test underscore("aModel") == "a_model"

@test underscore("AModel") == "a_model"

# -------------
#  test spaces
# -------------

test_string = "boo"

@test Case._defaultcase("boo") == test_string

@test Case._defaultcase("  boo") == test_string

@test Case._defaultcase("boo  ") == test_string

@test Case._defaultcase(" boo ") == test_string
