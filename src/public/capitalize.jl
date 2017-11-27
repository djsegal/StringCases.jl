function capitalize(cur_string::AbstractString)
  cur_string = join(map(x -> ucfirst(x), split(cur_string, "/")), "/")

  cur_string
end
