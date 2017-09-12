require('rspec')
require('riddle_of_the_sphinx')
require 'pry'

describe(SphinxRiddles) do
  describe("#riddleOne") do
    it("will check match between user input and correct answer") do
      test_SphinxRiddles = SphinxRiddles.new("short")
      expect(test_SphinxRiddles.riddleOne?).to(eq("short"))
    end
  end

  describe("#riddleTwo") do
    it("will check match between user input and correct answer") do
      test_SphinxRiddles = SphinxRiddles.new("mississippi")
      expect(test_SphinxRiddles.riddleTwo?).to(eq("mississippi"))
    end
  end
  describe("#riddleThree") do
    it("will check match between user input and correct answer") do
      test_SphinxRiddles = SphinxRiddles.new("silence")
      expect(test_SphinxRiddles.riddleThree?).to(eq("silence"))
    end
  end
  describe("#riddleFour") do
    it("will check match between user input and correct answer") do
      test_SphinxRiddles = SphinxRiddles.new("glass")
      expect(test_SphinxRiddles.riddleFour?).to(eq("glass"))
    end
  end

end
