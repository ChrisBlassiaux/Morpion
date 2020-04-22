class Game 
  attr_accessor :player, :board
  @@tour = 0

  def initialize(name, symbole)
    @player = Player.new(name, symbole)
    @player = Player.new(name, symbole)
    @board = Board.new
  end

  def start
    puts " "
    puts "=================== TOUR DE JEU ##{@@tour} ===================="
    puts " "
    @@tour += 1
  end

  def end
    puts 'La partie est terminée'
    #dire qui a gagné, ou si la partie est match nul
  end
end