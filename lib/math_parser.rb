require_relative "math_parser/errors"
require_relative "math_parser/tokenizer"
require_relative "math_parser/tree_builder"
require_relative "math_parser/evaluator"

module MathParser
  def self.calculate(string)
    tree = parse(string)
    # MathParser::Validator.validate!(tree)
    MathParser::Evaluator.evaluate(tree)
  end

  def self.parse(string)
    MathParser::TreeBuilder.build(
      MathParser::Tokenizer.tokenize(string)
    )
  end
end
