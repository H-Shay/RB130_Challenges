
class RomanNumeral

  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_roman
   values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
   romanLiterals = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
   roman = ''
   num_to_convert = @num

    values.each_with_index do |value, index|
      while num_to_convert >= value
        num_to_convert -= value
        roman << romanLiterals[index]
      end  
    end
    roman
  end 
end  
