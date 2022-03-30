class Board
  def initialize(board, positions, show_index, input)
    @board = board
    @positions = positions
    @show_index = show_index
    @input = input
  end

  def board
    @board
  end

  def board=(board)
    @board
  end

  def positions
    @positions
  end

  def show_index
    @show_index
  end

  def input
    @input
  end
  
  def input=(input)
    @input = input
  end

  def print

  end
end

board = Board.new(
  {
    :"11" => " ",
    :"12" => " ",
    :"13" => " ",
    :"14" => "│",
    :"15" => " ",
    :"16" => " ",
    :"17" => " ",
    :"18" => "│",
    :"19" => " ",
    :"110" => " ",
    :"111" => " ",

    :"21" => "─",
    :"22" => "─",
    :"23" => "─",
    :"24" => "┼",
    :"25" => "─",
    :"26" => "─",
    :"27" => "─",
    :"28" => "┼",
    :"29" => "─",
    :"210" => "─",
    :"211" => "─",

    :"31" => " ",
    :"32" => " ",
    :"33" => " ",
    :"34" => "│",
    :"35" => " ",
    :"36" => " ",
    :"37" => " ",
    :"38" => "│",
    :"39" => " ",
    :"310" => " ",
    :"311" => " ",

    :"41" => "─",
    :"42" => "─",
    :"43" => "─",
    :"44" => "┼",
    :"45" => "─",
    :"46" => "─",
    :"47" => "─",
    :"48" => "┼",
    :"49" => "─",
    :"410" => "─",
    :"411" => "─",

    :"51" => " ",
    :"52" => " ",
    :"53" => " ",
    :"54" => "│",
    :"55" => " ",
    :"56" => " ",
    :"57" => " ",
    :"58" => "│",
    :"59" => " ",
    :"510" => " ",
    :"511" => " ",
  },
  {
    :"1" => nil,
    :"2" => nil,
    :"3" => nil,
    :"4" => nil,
    :"5" => nil,
    :"6" => nil,
    :"7" => nil,
    :"8" => nil,
    :"9" => nil,
  },
  [
    [" 1 │ 2 │ 3 "],
    ["───┼───┼───"],
    [" 4 │ 5 │ 6 "],
    ["───┼───┼───"],
    [" 7 │ 8 │ 9 "]
  ],
  "x"
)

puts ""
puts "=== Tic-tac-toe ==="
puts "Player 1  x"
puts "Player 2  o"
puts "==================="
puts ""
puts "* Control + c to exit the game any time"
puts ""
puts ""
puts board.show_index
puts ""

while true
  puts "Pick a number to place \"#{board.input}\""
  # update the board
  while true
    answer = gets.chomp.to_i
    if answer == 1
      if board.board[:"12"] == "x" || board.board[:"12"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"12"] = "#{board.input}"
        break
      end
    elsif answer == 2
      if board.board[:"16"] == "x" || board.board[:"16"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"16"] = "#{board.input}"
        break
      end
    elsif answer == 3
      if board.board[:"110"] == "x" || board.board[:"110"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"110"] = "#{board.input}"
        break
      end
    elsif answer == 4
      if board.board[:"32"] == "x" || board.board[:"32"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"32"] = "#{board.input}"
        break
      end
    elsif answer == 5
      if board.board[:"36"] == "x" || board.board[:"36"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"36"] = "#{board.input}"
        break
      end
    elsif answer == 6
      if board.board[:"310"] == "x" || board.board[:"310"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"310"] = "#{board.input}"
        break
      end
    elsif answer == 7
      if board.board[:"52"] == "x" || board.board[:"52"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"52"] = "#{board.input}"
        break
      end
    elsif answer == 8
      if board.board[:"56"] == "x" || board.board[:"56"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"56"] = "#{board.input}"
        break
      end
    elsif answer == 9
      if board.board[:"510"] == "x" || board.board[:"510"] == "o"
        puts "Already taken. Pick another one!"
      else
        board.board[:"510"] = "#{board.input}"
        break
      end
    end
  end

  # print all lines
  index = 11
  array = []
  while true
    array << board.board[:"#{index}"]
    if index == 19
      index = 109
    elsif index == 29
      index = 209
    elsif index == 39
      index = 309
    elsif index == 49
      index = 409
    elsif index == 59
      index = 509
    elsif index == 111
      puts array.inject(:+)
      array = []
      index = 20
    elsif index == 211
      puts array.inject(:+)
      array = []
      index = 30
    elsif index == 311
      puts array.inject(:+)
      array = []
      index = 40
    elsif index == 411
      puts array.inject(:+)
      array = []
      index = 50
    elsif index == 511
      puts array.inject(:+)
      break
    end
    index += 1
  end
  # switch input
  if board.input == "x"
    board.input = "o"
    p board.input
  elsif board.input == "o"
    board.input = "x"
    p board.input
  end

  # if player_1 wins
  if board.board[:"12"] == "x" && board.board[:"16"] == "x" && board.board[:"110"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"32"] == "x" && board.board[:"36"] == "x" && board.board[:"310"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"52"] == "x" && board.board[:"56"] == "x" && board.board[:"510"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"12"] == "x" && board.board[:"32"] == "x" && board.board[:"52"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"16"] == "x" && board.board[:"36"] == "x" && board.board[:"56"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"110"] == "x" && board.board[:"310"] == "x" && board.board[:"510"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"12"] == "x" && board.board[:"36"] == "x" && board.board[:"510"] == "x"
    puts "Player 1 WON!"
    break
  elsif board.board[:"110"] == "x" && board.board[:"36"] == "x" && board.board[:"52"] == "x"
    puts "Player 1 WON!"
    break
  #if player_2 wins 
  elsif board.board[:"12"] == "o" && board.board[:"16"] == "o" && board.board[:"110"] == "o"
    puts "Player 1 WON!"
    break
  elsif board.board[:"32"] == "o" && board.board[:"36"] == "o" && board.board[:"310"] == "o"
    puts "Player 2 WON!"
    break
  elsif board.board[:"52"] == "o" && board.board[:"56"] == "o" && board.board[:"510"] == "o"
    puts "Player 2 WON!"
    break
  elsif board.board[:"12"] == "o" && board.board[:"32"] == "o" && board.board[:"52"] == "o"
    puts "Player 2 WON!"
    break
  elsif board.board[:"16"] == "o" && board.board[:"36"] == "o" && board.board[:"56"] == "o"
    puts "Player 2 WON!"
    break
  elsif board.board[:"110"] == "o" && board.board[:"310"] == "o" && board.board[:"510"] == "o"
    puts "Player 2 WON!"
    break
  elsif board.board[:"12"] == "o" && board.board[:"36"] == "o" && board.board[:"510"] == "o"
    puts "Player 2 WON!"
    break
  elsif board.board[:"110"] == "o" && board.board[:"36"] == "o" && board.board[:"52"] == "o"
    puts "Player 2 WON!"
    break
  end
end