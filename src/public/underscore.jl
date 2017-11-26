function underscore(cur_string::AbstractString)
  cur_string = _purgecase(cur_string)

  capital_letters = matchall(r"[A-Z]", cur_string)
  capital_letters = map(x -> downcase(x), capital_letters)

  lowercase_phrases = split(cur_string, r"([A-Z])")

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
    error("Improperly handled string on underscore")
  end

  snakecase(cur_string)
end
