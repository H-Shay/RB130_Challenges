class Octal
  attr_reader :octal

  def initialize(num)
    @octal = num
  end

  def to_decimal
    return 0 if invalid?(octal)
    result = []
    octal.chars.reverse.each_with_index do |char, idx|
      result << char.to_i * 8**idx
    end
    result.inject(:+)
  end

  private

  def invalid?(octal)
    count = octal.count "/[a-z]/"
    count1 = octal.count '8'
    count2 = octal.count '9'
    count1 + count2 + count > 0
  end
end
