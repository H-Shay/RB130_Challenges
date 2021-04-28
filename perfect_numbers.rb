class PerfectNumber
  def self.classify(num)
    raise StandardError unless num > 0
    result = ''

    result = 'perfect' if divisors(num).sum == num
    result = 'abundant' if divisors(num).sum > num
    result = 'deficient' if divisors(num).sum < num
    result
  end

  class << self
    private

    def divisors(num)
      divisors = []
      1.upto(num - 1) do |int|
        if num % int == 0
          divisors << int
        end
      end
      divisors
    end
  end
end
