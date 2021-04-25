class Triangle
  attr_reader :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    raise ArgumentError, 'invalid triangle' unless valid_triangle?(s1, s2, s3)
  end

  def kind
    return 'equilateral' if s1 == s2 && s1 == s3 && s2 == s3
    return 'scalene' if s1 != s2 && s1 != s3 && s2 != s3
    'isosceles'
  end

  def valid_triangle?(s1, s2, s3)
    return false if s1 <= 0 || s2 <= 0 || s3 <= 0
    return false if s1 + s2 <= s3 || s2 + s3 <= s1 || s1 + s3 <= s2
    true
  end
end
