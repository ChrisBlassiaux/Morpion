
require 'bundler'
Bundler.require
 
$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'player'
require 'game'
require 'boardcase'
require 'board'




#LANCEMENT DE LA PARTIE : VOIR Où le mettre
puts "Bonjour, vous souhaitez jouer au Morpion légendaire ?"
puts " "
puts "Entrez le nom du joueur 1 (O)"
print ">> "
name_1 = gets.chomp
puts "Entrez le nom du joueur 2 (X)"
print ">> "
name_2 = gets.chomp
puts "Bienvenus #{name_1} et #{name_2}"

puts "Etes-vous prêts pour lancer la partie ?"
puts "- Oui"
puts "- Non"
answer = gets.chomp

if answer == "Oui"

  game = Game.new(name_1, "O", name_2, "X")
  board = Board.new

  while game.game_turn_counter <= 30 #|| quelqu'un gagne
    system "clear"
    game.start_turns
    board.board_view
    choice = game.recover_player_choice
    player = game.which_player_should_play
    board.change_content_of_case(choice, player)
    
    if board.game_won_or_game_bad?
      system "clear"
      board.board_view
      puts "La partie est terminée, #{player.name} a gagné !" #bUG DE NAME
      break
    elsif board.game_won_or_game_bad? == false #try with !
      system "clear"
      board.board_view
      puts "La partie est terminée, c'est un match nul"
      break
    end

    #board.game_won_or_game_bad?
    #game.game_in_progress
  end

else
  puts "Au revoir #{name_1} et #{name_2}"
end





