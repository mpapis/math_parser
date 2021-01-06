RSpec.describe MathParser::TreeBuilder do
  subject { MathParser::TreeBuilder.build(array) }

  context "with numbers and operators" do
    let(:array) { [2, "*", 2, "-", 3, "*", 7] }

    it "builds" do
      is_expected.to eq([[2, "*", 2], "-", [3, "*", 7]])
    end
  end

  context "when operator is missing" do
    let(:array) { [1, 2] }

    it "raises" do
      expect { subject }.to raise_error(MathParser::TreeBuilderError, "No operators in input at 0 in: 1 2")
    end
  end
end
