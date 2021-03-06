class Game 
  attr_accessor :players, :board
  @@tour = 0

  def initialize(name_1, symbole_1, name_2, symbole_2)
    @players = []
    @players << Player.new(name_1, symbole_1)
    @players << Player.new(name_2, symbole_2)
    @board = Board.new
  end

  def start_turns
    puts " "
    puts "=" * 40
    puts (" " * 13) + "Tour de #{which_player_should_play.name}"
    puts "=" * 40
    puts " "
  end

  def recover_player_choice
    puts "  #{which_player_should_play.name}, C'est votre tour !"
    puts "  Entrez les coordonnées de la case souhaitée"
    print "  >> "
    selected_case = gets.chomp
  end

  def which_player_should_play
    if @@tour.odd?
      return @players[0]
    else
      return @players[1]
    end
  end

  def game_turn_counter
    @@tour += 1 
    return @@tour
  end

  def restart_game?
    puts "Voulez vous lancer un nouvelle partie ?"
    puts "- Oui"
    puts "- Non"
    answer = gets.chomp
    if answer == "Oui"
      return true #ou relancer partie
    else
      puts "Au revoir #{@players[0].name} et #{@players[1].name}"
    end
  end
end
