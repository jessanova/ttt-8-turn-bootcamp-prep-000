def display_board
  
end

def valid_move?(board,index)
  if(index.between?(0,8))
    return true
  end
end

def move(board, input)
  input-=1
  if(valid_move?(board,input))
    
  end
end