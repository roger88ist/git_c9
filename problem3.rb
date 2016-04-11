
i  = 1
sort_sum = 100
reg_sum = 0

while sort_sum > reg_sum
	sort_sum += 1
	reg_sum += 10
	puts "#{i} times"
	i += 1
end

class Quadrilateral
end

class Rectangle < Quadrilateral
end

class Square < Rectangle
end

class Trapezoid < Quadrilateral
end

class Rhombus < Trapezoid
end

def test
  squa = Square.new
  puts squa.is_a? Rectangle
  puts squa.is_a? Quadrilateral

  rect = Rectangle.new
  puts rect.is_a? Quadrilateral
  puts not(rect.is_a? Trapezoid)

  trap = Trapezoid.new
  puts trap.is_a? Quadrilateral
  puts not(trap.is_a? Rectangle)

  rhom = Rhombus.new
  puts rhom.is_a? Trapezoid
  puts rhom.is_a? Quadrilateral
end

test
