function dasherize(cur_string::AbstractString)
  cur_string = _decamelize(cur_string)

  kebabcase(cur_string)
end
