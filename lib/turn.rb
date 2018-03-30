def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
    if (board[index] == "" || board[index] == " " || board[index] == nil)
        false
    elsif (board[index] == "O" || board[index] == "X")
        true
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
    input.to_i - 1
end

def move(board, input, char = "X")
    index = input_to_index(input)
    if valid_move?(board, index)
        board[index] = char
    end
        display_board(board)
end
