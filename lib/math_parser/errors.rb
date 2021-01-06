module MathParser
  class Error < ::StandardError ; end
  class TokenizerError < Error ; end
  class TreeBuilderError < Error ; end
  class EvaluatorError < Error ; end
end
