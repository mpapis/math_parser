module MathParser
  module Evaluator
    def self.evaluate(tree)
      return tree unless Array === tree

      left, operator, right = tree

      left = evaluate(left)
      right = evaluate(right)
      case operator
      when "+"
        left + right
      when "-"
        left - right
      when "*"
        left * right
      when "/"
        left / right
      else
        raise EvaluatorError, "Unknown operator '#{operator}'"
      end
    end
  end
end
