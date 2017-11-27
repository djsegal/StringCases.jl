function underscore(cur_string::AbstractString)
  cur_string = _decamelize(cur_string)

  snakecase(cur_string)
end
