def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "   |   |   "
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
  input-=1
  if(valid_move?(board,input))
    board[input]="X"
  end
end