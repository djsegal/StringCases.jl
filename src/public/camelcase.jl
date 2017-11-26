function camelcase(cur_string::AbstractString)
  lcfirst(pascalcase(cur_string))
end
