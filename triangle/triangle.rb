=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle

  def initialize sides
    sides.sort!
    
    @a = sides[0]
    @b = sides[1]
    @c = sides[2]
  end

  def isosceles?
    self.is_triangle? and (@a == @b or @a == @c or @b == @c)
  end

  def scalene?
    self.is_triangle? and (@a != @b and @b != @c and @a != @c)
  end

  def equilateral?
    self.is_triangle? and (@a == @b and @b == @c)
  end

  private def is_triangle?
    (@a + @b >= @c) and (@a != 0 and @b != 0 and @c != 0)
  end

end
