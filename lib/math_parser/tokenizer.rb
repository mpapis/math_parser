module MathParser
  module Tokenizer
    def self.tokenize(string)
      output = []
      scanner = StringScanner.new(string)
      until scanner.eos?
        if scanner.scan(/\d+/)
          output << Integer(scanner.matched)
        elsif scanner.scan(%r|[+\-*/]|)
          output << scanner.matched
        elsif scanner.scan(/\s+/)
          # ignore whitespace
        else
          raise TokenizerError, "Unknown token at #{scanner.pos}."
        end
      end
      output
    end
  end
end
