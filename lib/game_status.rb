# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #top row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #top left to bot right diagonal
  [2,4,6]  #top right to bot left diagonal
]

def won?(board)
winning_con = false

  WIN_COMBINATIONS.each do |win_con|

    #checks to make sure any of spaces included in winning 3 are not empty
    hasEmptySpace = win_con.any? do |this_win_con|
      current_space = board[this_win_con]
      current_space == "" || current_space == " " || current_space == nil
    end

    if (board[win_con[0]] == board[win_con[1]] && board[win_con[1]] == board[win_con[2]]) && !hasEmptySpace
      winning_con = win_con
    end
    break if winning_con
  end

  winning_con
end
