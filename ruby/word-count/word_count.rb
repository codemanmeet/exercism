class Phrase
  attr_accessor :str
  def initialize(str)
    @str = str
  end

  def word_count
    arr = str.split(/((?!\')\W)/).map(&:strip).map(&:downcase).reject(&:empty?).reject do |i|
      !i.containsAlphaNum?
    end.map do |j|
      if(j[0] == "\'" or j[-1] == "\'")
        j.gsub!(/[^a-zA-Z0-9]/, "")
      end
      j
    end
    arr.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end
end

class BookKeeping
  VERSION = 1
end

class String
  def containsAlphaNum?
    self =~ /[A-Za-z]/ || self =~ /[0-9]/
  end
end
