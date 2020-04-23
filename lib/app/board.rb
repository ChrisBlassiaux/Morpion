class Board
  attr_accessor :boardcase
  
  def initialize
    @boardcase = []
    @boardcase << BoardCase.new("A1", ' ')
    @boardcase << BoardCase.new("A2", ' ')
    @boardcase << BoardCase.new("A3", ' ')
    @boardcase << BoardCase.new("B1", ' ')
    @boardcase << BoardCase.new("B2", ' ')
    @boardcase << BoardCase.new("B3", ' ')
    @boardcase << BoardCase.new("C1", ' ')
    @boardcase << BoardCase.new("C2", ' ')
    @boardcase << BoardCase.new("C3", ' ')
  end


  def board_view
    puts (" " * 13) + "   1   2   3  "
    puts (" " * 12) + "  -------------"
    puts (" " * 12) + "A | #{@boardcase[0].content} | #{@boardcase[1].content} | #{@boardcase[2].content} |"
    puts (" " * 12) + "  |---|---|---|"
    puts (" " * 12) + "B | #{@boardcase[3].content} | #{@boardcase[4].content} | #{@boardcase[5].content} |"
    puts (" " * 12) + "  |---|---|---|"
    puts (" " * 12) + "C | #{@boardcase[6].content} | #{@boardcase[7].content} | #{@boardcase[8].content} |"
    puts (" " * 12) + "  -------------"
    puts " "
  end

  def change_content_of_case(choice, player)
    case choice 
      when "A1" 
        if @boardcase[0].content == " "
          @boardcase[0].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end 
      when "A2"
        if @boardcase[1].content == " "
          @boardcase[1].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "A3" 
        if @boardcase[2].content == " "
          @boardcase[2].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "B1" 
        if @boardcase[3].content == " "
          @boardcase[3].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "B2" 
        if @boardcase[4].content == " "
          @boardcase[4].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "B3" 
        if @boardcase[5].content == " "
          @boardcase[5].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "C1" 
        if @boardcase[6].content == " "
          @boardcase[6].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "C2" 
        if @boardcase[7].content == " "
          @boardcase[7].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      when "C3" 
        if @boardcase[8].content == " "
          @boardcase[8].content = player.symbole
        else
          puts "Tu as visé une case déjà remplie"
        end
      else puts "Tu n'as pas entré une case existante"
    end
  end

  def game_won_or_game_bad?
    if ((@boardcase[0].content == "X") && (@boardcase[1].content == "X") && (@boardcase[2].content == "X")) || ((@boardcase[3].content == "X") && (@boardcase[4].content == "X") && (@boardcase[5].content == "X")) || ((@boardcase[6].content == "X") && (@boardcase[7].content == "X") && (@boardcase[8].content == "X")) || ((@boardcase[0].content == "X") && (@boardcase[3].content == "X") && (@boardcase[6].content == "X")) || ((@boardcase[1].content == "X") && (@boardcase[4].content == "X") && (@boardcase[7].content == "X")) || ((@boardcase[2].content == "X") && (@boardcase[5].content == "X") && (@boardcase[8].content == "X")) || ((@boardcase[6].content == "X") && (@boardcase[4].content == "X") && (@boardcase[2].content == "X"))
      return true
    elsif ((@boardcase[0].content == "O") && (@boardcase[1].content == "O") && (@boardcase[2].content == "O")) || ((@boardcase[3].content == "O") && (@boardcase[4].content == "O") && (@boardcase[5].content == "O")) || ((@boardcase[6].content == "O") && (@boardcase[7].content == "O") && (@boardcase[8].content == "O")) || ((@boardcase[0].content == "O") && (@boardcase[3].content == "O") && (@boardcase[6].content == "O")) || ((@boardcase[1].content == "O") && (@boardcase[4].content == "O") && (@boardcase[7].content == "O")) || ((@boardcase[2].content == "O") && (@boardcase[5].content == "O") && (@boardcase[8].content == "O")) || ((@boardcase[6].content == "O") && (@boardcase[4].content == "O") && (@boardcase[2].content == "O"))
      return true
    elsif @boardcase[0].content != " " && @boardcase[1].content != " " && @boardcase[2].content != " " && @boardcase[3].content != " " && @boardcase[4].content != " " && @boardcase[5].content != " " && @boardcase[6].content != " " && @boardcase[7].content != " " && @boardcase[8].content != " "
      return false
    end
  end
end