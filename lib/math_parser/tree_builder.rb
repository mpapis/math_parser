module MathParser
  module TreeBuilder
    def self.build(array, shift = 0)
      return array.first if array.length == 1

      %w[ + - * / ].each do |operator|
        if (index = array.find_index(operator))
          return [build(array[0...index]), operator, build(array[index+1..-1], index)]
        end
      end

      raise MathParser::TreeBuilderError, "No operators in input at #{shift} in: #{array.join(" ")}"
    end
  end
end
