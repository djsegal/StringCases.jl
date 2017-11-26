function _defaultcase(cur_string::AbstractString)
  cur_string = _purgecase(cur_string)

  cur_string = join(split(cur_string), " ")
  cur_string = downcase(cur_string)

  cur_string
end
