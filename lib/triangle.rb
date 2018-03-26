require "pry"

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end





  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      TriangleError
    elsif @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
      TriangleError
    end

    if @side1 == @side2 && @side1 == @side3
      return :equilateral
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      binding.pry
      return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError
  # triangle error code
  end

end

# equilateral = 3 the same
# scaline = 3 unequal
# isosceles = 2 equal
