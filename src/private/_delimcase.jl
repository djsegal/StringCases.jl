function _delimcase(cur_string::AbstractString, cur_delim::AbstractString)
  replace(
    _defaultcase(cur_string),
    " ",
    cur_delim
  )
end
