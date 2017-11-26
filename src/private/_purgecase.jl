function _purgecase(cur_string::AbstractString)
  cur_string = replace(cur_string, "-", " ")
  cur_string = replace(cur_string, "_", " ")

  cur_string
end
