function pascalcase(cur_string::AbstractString)
  replace(
    titlecase(_defaultcase(cur_string)),
    " ",
    ""
  )
end
