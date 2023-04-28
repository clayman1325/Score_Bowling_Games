require_relative "bowling_score"

DEFAULT_GAME = "scores"

puts "What's game do you want to calculate its score?"

score_game = BowlingScore.new
# score_game.games.each{|name| p name }
game = ""
# game = gets.chomp
game = game.empty? ? DEFAULT_GAME : game;
puts "Calculating score for game: #{game}"
score_game.start(game)