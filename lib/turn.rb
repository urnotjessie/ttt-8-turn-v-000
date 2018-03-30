def display_board(board)
    puts " board[0] | board[1] | board[2]"
    puts " board[3] | board[4] | board[5]"
    puts " board[6] | board[7] | board[8]"
end

def position_taken?(board, index)
    if (board[index] == "" || board[index] == " " || board[index] == nil)
        false
    elsif (board[index] == "O" || board[index] == "X")
        turn
    end
end

def valid_move?(board, index)
    if position_taken?(board, index)
        false
    elsif index.between?(0, 8)
        true
    end
end

def input_to_index(input)
    input.to_int
end

def move(board, input, token = "X")
    index = input_to_index(input)
    if valid_move?
        display_board(board, index)
    end
end
