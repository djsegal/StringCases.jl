__precompile__()

module Case

  # ============
  #  public api
  # ============

  export upcase, downcase

  export spacecase

  export camelcase, pascalcase
  export snakecase, kebabcase

  export underscore, dasherize

  export camelize, decamelize

  export capitalize, classify

  # ===========
  #  core load
  # ===========

  upcase = uppercase
  downcase = lowercase

  include("public/index.jl")
  include("private/index.jl")

  decamelize = _decamelize

end
