class Diamond
  ALPHABET = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

  def self.make_diamond(letter)
    return "A\n" if letter == "A"
    index = ALPHABET.index(letter)
    top_half(index) + bottom_half(index)
  end

  private

  class << self
    def top_half(index)
      result = ""
      result << "#{' ' * (index)}#{ALPHABET[0]}#{' ' * index}\n"
      1.upto(index) do |int|
        result << "#{' ' * (index - int)}#{ALPHABET[int]}#{' ' * ((int * 2) - 1)}#{ALPHABET[int]}#{' ' * (index - int)}\n"
      end
      result
    end

    def bottom_half(index)
      result = ''
      count = 1
      (index - 1).downto(1) do |int|
        result << "#{' ' * (index - int)}#{ALPHABET[int]}#{' ' * ((int * 2) - 1)}#{ALPHABET[int]}#{' ' * count}\n"
        count += 1
      end
      result << "#{' ' * index}#{ALPHABET[0]}#{' ' * index}\n"
      result
    end
  end
end
