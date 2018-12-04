require_relative 'player'
require_relative 'game'
require_relative 'question'

players = [
  Player.new("Player 1"),
  Player.new("Player 2")
]

game = Game.new(players[0])

q = Question.new

def check_answer(res, cp, players)
  if res == false
    cp.score_count -= 1
    puts "That's a lost life, pal"
    if cp == players[0]
      current_player = players[1]
    else current_player = players[0]
    end

  else
    puts "Congrats at not sucking"
    if cp == players[0]
      current_player = players[1]
    else current_player = players[0]
    end
  end
  puts "P1: #{players[0].score_count}/3 vs P2: #{players[1].score_count}/3"
  puts "----- NEW TURN -----"
      puts "USERDOIH", current_player.name
end

while players[0].score_count > 0 && players[1].score_count > 0 do
  puts "#{game.current_player.name} turn"
  q.show_question
  player_response = gets.chomp.to_i
  result = q.check_answer(player_response)
  check_answer(result, game.current_player, players)
end



#
#
# puts q.show_question
#
# player_response = gets.chomp.to_i
# result = q.check_answer(player_response)
#
# if result == false
#   current_player.score_count -= 1
#   puts "That's a lost life, pal"
#   # switch_user
#   if current_player == players[0]
#     current_player = players[1]
#   else current_player = players[0]
#   end
#   puts "P1: #{players[0].score_count}/3 vs P2: #{players[1].score_count}/3"
#   q.show_question
# else puts "YES! You are not horrible!"
#   if current_player == players[0]
#     current_player = players[1]
#   else current_player = players[0]
#   end
#   puts "P1: #{players[0].score_count}/3 vs P2: #{players[1].score_count}/3"
#   q.show_question
# end
#######################################
#
# while player[0].score_count > 0 && players[1].score_count > 0
#
#   1. present a question
#   2. get an answer
#   3. check whether correct or not and if incorrect, decrease the score count
#   4. flip the user
#
# end

# def switch_user
#   if current_player == players[0]
#     current_player = players[1]
#   else
#     current_player = players[0]
#   end
# end

#get the response
