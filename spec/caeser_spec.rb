require './lib/caeser'

describe Caeser do
  describe "convert_ord" do
    it "shifts input string ascii value by shift variable" do
      caeser = Caeser.new()
      expect(caeser.convert_ord("a", 5)).to eql("f")
    end
    
    it "shifts input string ascii value by shift variable" do
      caeser = Caeser.new()
      expect(caeser.convert_ord("a", 26)).to eql("a")
    end

    
    it "shifts input string ascii value by shift variable" do
      caeser = Caeser.new()
      expect(caeser.convert_ord("A", 5)).to eql("F")
    end    

    it "shifts input string ascii value by shift variable" do
      caeser = Caeser.new()
      expect(caeser.convert_ord("!", 5)).to eql("!")
    end    
  end

  describe "caeser_ciper" do
    it "returns an entire string shifted by a value" do
      caeser = Caeser.new
      expect(caeser.caeser_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
  end
end