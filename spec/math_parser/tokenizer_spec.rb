RSpec.describe MathParser::Tokenizer do
  subject { MathParser::Tokenizer.tokenize(input) }

  context "with numbers, operators and spaces" do
    let(:input) { "2+2 - 3 *7" }

    it "parses" do
      is_expected.to eq([2, "+", 2, "-", 3, "*", 7])
    end
  end

  context "with unknown string" do
    let(:input) { "nothing" }

    it "raises error" do
      expect { subject }.to raise_error(MathParser::TokenizerError, "Unknown token at 0.")
    end
  end
end
