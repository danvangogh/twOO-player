require_relative 'player'
require_relative 'game'
require_relative 'question'

players = [
  Player.new("Player 1"),
  Player.new("Player 2")
]
q = Question.new

current_player = players[0]

puts "Player 1 turn"
puts q.show_question
player_response = gets.chomp.to_i
result = q.check_answer(player_response)
puts "Result ", result

#if the answer if incorrect

current_player.score_count -= 1
current_player = players[1]

#get the response
