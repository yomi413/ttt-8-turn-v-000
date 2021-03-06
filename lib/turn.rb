def display_board(board)
  # board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index)
    true
  else
    false
    end
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def input_to_index(input)
  # user_input = "1" - "9"
  input.to_i - 1
end

def move(board, index, play = "X")
  board[index] = play
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, play = "X")
    display_board(board)
  else
    turn(board)
  end
end
