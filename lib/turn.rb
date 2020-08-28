def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    return TRUE
  else
    return FALSE
  end
end

def input_to_index(input)
  1.times do
    input.to_i-1
  end
end

def turn(board, index, player)

  if valid_move?(board, input_to_index(input))
    move (board, index, player)
    display_board(board)
  else
    puts "Please try again with 1-9:"
    input = gets.strip
  end
end

def position_taken?(board,index)
  if board[index]==" "||board[index]==""||board[index]==nil
    return FALSE
  elsif board[index]=="X"||board[index]=="O"
    return true
  end
end

def move(board, index, player)
  board[index] = " #{player} "
end