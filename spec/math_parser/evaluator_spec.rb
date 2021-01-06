RSpec.describe MathParser::Evaluator do
  subject { MathParser::Evaluator.evaluate(tree) }

  context "with numbers and operators" do
    let(:tree) { [[4, "*", 5], "-", [3, "*", 2]] }

    it "builds" do
      is_expected.to eq(14)
    end
  end

  context "when operator is missing" do
    let(:tree) { [1, "%", 2] }

    it "raises" do
      expect { subject }.to raise_error(MathParser::EvaluatorError, "Unknown operator '%'")
    end
  end
end
