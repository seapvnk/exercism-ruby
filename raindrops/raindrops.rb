=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops

  def self.convert n
    
    if n % 3 == 0 or n % 5 == 0 or n % 7 == 0
      res = ""
      
      if n % 3 == 0
        res += 'Pling'
      end

      if n % 5 == 0
        res += 'Plang'
      end

      if n % 7 == 0
        res += 'Plong'
      end

      res
    else
      n.to_s
    end
 
  end

end
