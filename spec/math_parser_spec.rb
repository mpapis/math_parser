RSpec.describe MathParser do
  it "calculates 2+2" do
    expect(MathParser.calculate("2+2")).to eq 4
  end
end
