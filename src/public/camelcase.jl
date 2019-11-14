function camelcase(cur_string::AbstractString)
  lowercasefirst(pascalcase(cur_string))
end
