require_relative "../lib/multiples"  

describe "test_multiples" do

  describe "is a multiple of 3 or 5 (boolean)" do
    
    it "test a number that is a 3 or 5 multiple" do
      expect(is_multiple_of_3_or_5?(51)).to eq(true)
    end

    it "test another number that is a 3 or 5 multiple" do
      expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end

    it "now for a number that is NOT a 3 or 5 multiple" do
      expect(is_multiple_of_3_or_5?(2)).to eq(false)
    end

    it "and another number that is NOT a 3 or 5 multiple" do
      expect(is_multiple_of_3_or_5?(64)).to eq(false)
    end

  end

  describe "sum of 3 or 5 multiples under num (final number)" do
    
    it "test the sum of all 3 or 5 multiples under 10" do
      expect(sum_of_3_or_5_multiples(10)).to eq(23)
    end

    it "test the sum of all 3 or 5 multiples under 11" do
      expect(sum_of_3_or_5_multiples(11)).to eq(33)
    end

    it "test the sum of all 3 or 5 multiples under 3" do
      expect(sum_of_3_or_5_multiples(3)).to eq(0)
    end

    it "test for 0" do
      expect(sum_of_3_or_5_multiples(0)).to eq(0)
    end

    it "test for incorrect input value" do
      expect(sum_of_3_or_5_multiples("test")).to eq("Integers bro, only integers.")
    end

    it "test for negative values" do
      expect(sum_of_3_or_5_multiples(-1)).to eq("Integers bro, only integers.")
    end

    it "test for float values" do
      expect(sum_of_3_or_5_multiples(1.50)).to eq("Integers bro, only integers.")
    end

  end

end
