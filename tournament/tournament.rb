=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class Team
  attr_accessor :id, :wins, :draws, :loses, :name, :matches_played
  
  @@team_id = 0

  def initialize name
    @id = @@team_id
    @name = name
    @matches_played = 0
    @wins = 0
    @draws = 0
    @loses = 0
    @@team_id += 1
  end

  def points
    3 * @wins + @draws
  end

  def <=> other
    other.points <=> self.points
  end
end

class Tournament

  def self.tally input
    out = sprintf "%-31s| %2s | %2s | %2s | %2s | %2s\n" % ["Team", "MP", "W", "D", "L", "P"]
    
    self.parse_matches(input).each do |team|
      out  += sprintf "%-31s| %2s | %2s | %2s | %2s | %2s\n" % [ 
        team.name,
        team.matches_played,
        team.wins,
        team.draws,
        team.loses,
        team.points
      ]
    end

    out
  end

  private
  def self.parse_matches input
    teams = Hash.new
    
    matches = input.split "\n"
    matches.each do |match|
     match_contents = match.split ';'
      team_1 = match_contents[0]
      team_2 = match_contents[1]
      result = match_contents[2]

      unless teams.key? team_1
        teams[team_1] = Team.new team_1
      end
      
      unless teams.key? team_2
        teams[team_2] = Team.new team_2
      end
     
        teams[team_1].matches_played += 1
        teams[team_2].matches_played += 1

      if result == 'draw'
          teams[team_1].draws += 1
          teams[team_2].draws += 1
        elsif result == 'win'
          teams[team_1].wins += 1
          teams[team_2].loses += 1
        else
          teams[team_1].loses += 1
          teams[team_2].wins += 1
      end

    end
    
    teams.values.sort_by(&:name).sort
  end

end
