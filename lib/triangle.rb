class Triangle
  # write code here
  

  def initialize side_a, side_b, side_c
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a == @side_b && @side_a == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
      :isosceles
    else
      :scalene
    end
  end

end

