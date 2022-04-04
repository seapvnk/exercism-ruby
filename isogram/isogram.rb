=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram

  def self.isogram? s

   ns = []
   s = s.upcase.sub(/(-|\s)/, '')
   s.split('').each do |c|
     ns.push(c) unless ns.include? c
   end

   ns.join == s
  
  end

end
