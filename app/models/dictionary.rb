class Dictionary
  attr_accessor :phrases

  def initialize
    @phrases = IO.read("data/phrases.txt").split(/\n/).shuffle
  end

  # Pluck random phrases from the dictionary; returns an array of phrases.
  def pluck(count)
    phrases.shift(count).map { |set| set.split(", ").sample }
  end

end
