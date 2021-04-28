require 'pry'
class BeerSong
  def self.verse(num)
    case num
    when 0 
      zero_bottle_verse
    when 1 
      single_bottle_verse
    when 2 
      two_bottle_verse
    else
      default_verse(num)
    end
  end

  def self.lyrics
    verses(99,0)
  end

  def self.verses(*num)
    result = []

    num.each do |verse_num|
      result << verse(verse_num)
    end
    result.join("\n")
  end

  class << self

    def default_verse(bottles)
      "#{bottles} bottles of beer on the wall, #{bottles}" +
      " bottles of beer.\nTake one down and pass it around, " +
      "#{bottles-1} bottles of beer on the wall.\n"
    end

    def two_bottle_verse
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer " +
      "on the wall.\n"
    end

    def single_bottle_verse
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer " +
      "on the wall.\n"
    end

    def zero_bottle_verse
      "No more bottles of beer on the wall, no more bottles " +
      "of beer.\nGo to the store and buy some more, 99 bottles " +
      "of beer on the wall.\n"
    end
  end
end

