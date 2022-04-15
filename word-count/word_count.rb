=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase

  def initialize phrase
    @phrase = phrase
  end

  def word_count
    words = Hash.new
    p = @phrase
      .downcase
      .sub(',', ' ')
      .sub(/(\n|,|[,\s],\t)/, " ")
      .sub(/\s+/, ' ')
      .split " "

    p.each do |w|
      rgxp = /(\w)(\w|')*\w/
      matches = w.match(rgxp)

      if (matches.to_a.count > 0)
        w = matches[0]
      end

      if !words.include? w
        words[w]  = 1
      else
        words[w] += 1
      end
    end

    words
  end

end
