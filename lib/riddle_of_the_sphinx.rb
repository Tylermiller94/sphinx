
class SphinxRiddles

  attr_reader(:word )

  def initialize(word)
    @word = word
  end

  def riddleOne?
    if self.word.eql?(@word)
      return self.word
    end
  end

  def riddleTwo?
    if self.word.eql?(@word)
      return self.word
    end
  end

  def riddleThree?
    if self.word.eql?(@word)
      return self.word
    end
  end

  def riddleFour?
    if self.word.eql?(@word)
      return self.word
    end
  end
end
