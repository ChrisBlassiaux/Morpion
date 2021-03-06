class Application


  def apply 
    puts " "
    puts "=".colorize(:blue) * 55
    puts " Bonjour, vous souhaitez jouer au Morpion légendaire ?"
    puts "=".colorize(:blue) * 55
    puts " "
  
    puts " "
    puts "  Entrez le nom du joueur 1"+ " (" + "O".colorize(:red) + ") "
    print "  >> ".colorize(:light_blue)
    name_1 = gets.chomp
    puts " "
    puts "  Entrez le nom du joueur 2" + " (" + "X".colorize(:red) + ") "
    print "  >> ".colorize(:light_blue)
    name_2 = gets.chomp
    puts " "
    puts "  Bienvenus #{name_1} et #{name_2}"
    puts " "
    puts "  Etes-vous prêts pour lancer la partie ?"
    puts "  - Oui"
    puts "  - Non"
    print "  >> ".colorize(:light_blue)
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
          puts " "
          puts "=" * 40
          puts (" " * 9) + "La partie est terminée"
          puts "=" * 40
          puts " "
          board.board_view
          puts "La partie est terminée, #{player.name} a gagné !" 
          break
        elsif board.game_won_or_game_bad? == false
          system "clear"
          puts " "
          puts "=" * 40
          puts (" " * 9) + "La partie est terminée"
          puts "=" * 40
          puts " "
          board.board_view
          puts "La partie est terminée, c'est un match nul"
          break
        end
      end
    else
      puts "Au revoir #{name_1} et #{name_2}"
    end
  end
end


