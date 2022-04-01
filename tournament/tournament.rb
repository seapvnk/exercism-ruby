=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament
  
  def self.tally(input)
    teams = get_teams_score input

    tally = sprintf "%-31s| %2s | %2s | %2s | %2s | %2s\n" % ["Team", "MP", "W", "D", "L", "P"]
    teams.each do |id, team|
      team[5] = team[3] + team[2] * 3
      tally += sprintf "%-31s| %2s | %2s | %2s | %2s | %2s\n" % team
    end

    tally
  end

  private
  def self.get_teams_score(input)
    teams = {}
    lines = input.split "\n"
    lines.each do |line|
      match = parse_match line.strip
      teams = update_team_score teams, match
    end

    teams
  end

  def self.parse_match(match)
    match_contents = match.split ';'

    {
      "team_1" => match_contents[0],
      "team_2" => match_contents[1],
      "result" => match_contents[2],
    }
  end

  def self.update_team_score(teams, match)
    team1 = match["team_1"]
    team2 = match["team_2"]

    if teams[team1].nil?
      teams[team1] = [team1, 0, 0, 0, 0]
    end
    
    if teams[team2].nil?
      teams[team2] = [team2, 0, 0, 0, 0]
    end
    
    teams[team1][1] += 1
    teams[team2][1] += 1
    if match["result"] == "draw"
      teams[team1][3] += 1
      teams[team2][3] += 1
    elsif match["result"] == "win"
      teams[team1][2] += 1
      teams[team2][4] += 1
    else
      teams[team1][4] += 1
      teams[team2][2] == 1
    end

    teams
  end

end 
