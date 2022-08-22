class Triangle
  # write code here

  attr_accessor :side1, :hypotenuse, :adjacent

  def initialize(side1,adjacent,hypotenuse)
    @adjacent=adjacent
    @side1=side1
    @hypotenuse=hypotenuse
  end

  def kind 
    if self.adjacent <= 0 || self.side1 <= 0 || self.hypotenuse <= 0
      raise TriangleError
      elsif self.adjacent == self.hypotenuse && self.hypotenuse == self.side1
      :equilateral
    elsif self.adjacent == self.hypotenuse || self.hypotenuse == self.side1 || self.side1 == self.adjacent
      :isosceles
    elsif self.adjacent != self.hypotenuse && self.hypotenuse != self.side1 && self.side1 != self.adjacent
      :scalene
    end
  end

  class TriangleError < StandardError
    #triangle error code
    def message
      "Not a valid triangle"

    end
  end
end

sample = Triangle.new(1,1,3)
puts sample.kind
