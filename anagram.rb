class Anagram
  def initialize(word)
    @anagram = word
  end

  def match(arr)
    result = []
    arr.each do |word|
      if anagram?(@anagram, word)
        result << word
      end
    end
    result
  end

  def anagram?(word1, word2)
    if word1.size == word2.size && word1.downcase != word2.downcase
      return word1.downcase.chars.sort == word2.downcase.chars.sort
    end
    false
  end
end
