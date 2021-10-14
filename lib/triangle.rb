class Triangle
  # write code here
  

  def initialize side_a, side_b, side_c
    
    #condition to raise error - no side can be 0 there must be 3 sides with a value
    if side_a <= 0 || side_b <= 0 || side_c <= 0
      raise TriangleError
    end
  #condition to raise error - the third side cannot be larger than the sum of the other  
    #two sides
    if side_a >= (side_b + side_c) || side_b >= (side_a + side_c) || side_c >= (side_a + side_b)
      raise TriangleError
    end
  #condition to raise error - all 3 sides have to exist
    if side_a == nil || side_b == nil || side_c == nil
      raise TriangleError
    end
 
    #sets the value upon initialization of a new triangle instance
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c


  end

  #this method tells you what kind of triangle it is based on the relationship between sides
  def kind
    if @side_a == @side_b && @side_a == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
      :isosceles
    else
      :scalene
    end
  end

  #this is the error to be raised if the sides are not acceptable
  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end

end

