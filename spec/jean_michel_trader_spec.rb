require_relative "../lib/jean_michel_trader"

describe "Best day to buy and sell" do

  it "Test with an array of price" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end
