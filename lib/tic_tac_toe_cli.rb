class TicTacToeCLI
  def initialize
  end

  def call
    puts "Welcome to Tic Tac Toe!"
    puts "How many players? (0-2)"
    input = gets.chomp
    #both players are computers
    if input.to_i == 0
      Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Computer.new("O")).play
    #both players are humans 
    elsif input.to_i == 2
      Game.new.play
      
    #player_1 is human, player_2 is computer
    else
      puts "Are you playing X or O?"
      first_player = gets.chomp
      if first_player == "X" || first_player == "x"
        Game.new(player_1 = Players::Human.new("X"), player_2 = Players::Computer.new("O")).play
      else
        Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Human.new("O")).play
      end
    end
  end
end