__precompile__()

module StringManipulations

  # ============
  #  public api
  # ============

  export upcase, downcase

  export spacecase

  export camelcase, pascalcase
  export snakecase, kebabcase

  export underscore

  # ===========
  #  core load
  # ===========

  upcase = uppercase
  downcase = lowercase

  include("public/index.jl")
  include("private/index.jl")

end
