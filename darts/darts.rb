=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end


class Darts

  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
  
    distance = (@x**2 + @y**2)**0.5
    
    return 10 if distance <= 1
    return  5 if distance <= 5
    return  1 if distance <= 10

    0

  end

end
