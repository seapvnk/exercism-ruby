=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end

class Bob

  def self.hey rm

    rm.strip!
    return 'Fine. Be that way!' if rm == ""
    
    if rm.upcase == rm
      return 'Whatever.' if rm[-1, 1].match /[0-9]/
      return 'Sure.' if rm.match /([0-9]|[^a-zA-Z])+\?/
      return 'Whoa, chill out!' unless rm.end_with? "?"
      return 'Calm down, I know what I\'m doing!'
    end

    return 'Sure.' if rm.end_with? "?"
    
    'Whatever.'

  end

end
