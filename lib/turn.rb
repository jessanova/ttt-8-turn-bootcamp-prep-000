def turn(board)
  puts "Please enter 1-9:"
  get input
  move(board, input)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if(index.between?(0,8))
    if( (board[index]==" ") || (board[index].to_s.empty?) || (board[index].nil?))
      return TRUE
    end
  end
  return false
end

def move(board, input)
  index=input_to_index(input)
  if(valid_move?(board,index))
    board[index]="X"
  end
end

def input_to_index(input)
  index=input-1
  return index
end