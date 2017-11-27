function _decamelize(cur_string::AbstractString)
  capital_letters = matchall(r"[A-Z]+", cur_string)
  capital_letters = map(x -> downcase(x), capital_letters)

  lowercase_phrases = split(cur_string, r"([A-Z]+)")

  cur_array = vcat(
    map(
      x -> join(x, "_"),
      [zip(lowercase_phrases, capital_letters)...]
    )...
  )

  cur_string = join(cur_array)

  if length(lowercase_phrases) > length(capital_letters)
    cur_string *= lowercase_phrases[end]
  end

  if length(lowercase_phrases) < length(capital_letters)
    error("Improperly handled string on decamelize: $cur_string")
  end

  ( startswith(cur_string, "_") ) && ( cur_string = cur_string[2:end] )
  ( startswith(cur_string, "-") ) && ( cur_string = cur_string[2:end] )

  cur_string
end
