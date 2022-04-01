=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end
class Complement

  def self.of_dna(seq)
    comp = ""
    
    seq.split('').each do |c|
      case c
      when 'G'
        comp += 'C'
      when 'C'
        comp += 'G'
      when 'T'
        comp += 'A'
      when 'A'
        comp += 'U'
      end
    end

    comp
  end

end
