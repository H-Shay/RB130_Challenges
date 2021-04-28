class SumOfMultiples
  attr_reader :set

  def self.to(num)
    new.to(num)
  end

  def initialize(*set)
    @set = set.empty? ? [3, 5] : set
  end

  def to(num)
    multiples = [0]
    1.upto(num - 1) do |int|
      set.each do |number|
        if int % number == 0
          multiples << int
        end
      end
    end
    multiples.uniq.inject(:+)
  end
end
