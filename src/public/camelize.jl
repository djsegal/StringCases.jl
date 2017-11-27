function camelize(cur_string::AbstractString)
  cur_string = classify(cur_string)

  cur_string = join(map(x -> lcfirst(x), split(cur_string, "/")), "/")

  cur_string
end
