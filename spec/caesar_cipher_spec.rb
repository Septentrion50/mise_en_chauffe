require_relative "../lib/caesar_cipher"

describe "caesar cipher strings of various nature" do

  describe "caesar cipher final" do

    it "Test for a standard input string" do
      expect(caesar_cipher("This is a test", 4)).to eq("Xlmw mw e xiwx")
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end

  end

end
