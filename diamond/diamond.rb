=begin
Write your code for the 'Diamond' exercise in this file. Make the tests in
`diamond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/diamond` directory.
=end

class Diamond

  def self.make_diamond letter
    
    if letter == 'A'
      return "A\n"
    end

    diamond = ''
    interval = Array('A'..letter)
    letters = interval.reverse + interval.slice(1, interval.length)
    iterable = interval + interval.reverse.slice(1, interval.length)
    iterable.each do |letter|
      letters.each do |c|
        diamond += ( c == letter ) ? letter : ' '
      end
      diamond += "\n"
    end
     
    diamond
  end

end

