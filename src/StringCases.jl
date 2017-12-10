__precompile__()

module StringCases

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

  const upcase = uppercase
  const downcase = lowercase

  include("public/index.jl")
  include("private/index.jl")

  const decamelize = _decamelize

end
