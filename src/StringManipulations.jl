__precompile__()

module StringManipulations

  export upcase, downcase

  export spacecase

  export camelcase, pascalcase
  export snakecase, kebabcase

  export underscore

  upcase = uppercase
  downcase = lowercase

  function _purgecase(cur_string::AbstractString)
    cur_string = replace(cur_string, "-", " ")
    cur_string = replace(cur_string, "_", " ")
  end

  function _defaultcase(cur_string::AbstractString)
    cur_string = _purgecase(cur_string)

    cur_string = join(split(cur_string), " ")
    cur_string = downcase(cur_string)

    cur_string
  end

  function _delimcase(cur_string::AbstractString, cur_delim::AbstractString)
    replace(
      _defaultcase(cur_string),
      " ",
      cur_delim
    )
  end

  function spacecase(cur_string::AbstractString)
    _defaultcase(cur_string)
  end

  function pascalcase(cur_string::AbstractString)
    replace(
      titlecase(_defaultcase(cur_string)),
      " ",
      ""
    )
  end

  function camelcase(cur_string::AbstractString)
    lcfirst(pascalcase(cur_string))
  end

  function snakecase(cur_string::AbstractString)
    _delimcase(cur_string, "_")
  end

  function kebabcase(cur_string::AbstractString)
    _delimcase(cur_string, "-")
  end

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

end
