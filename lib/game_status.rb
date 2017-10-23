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
    if win_con.all? {|win_con_index| board[win_con_index] == board[win_con[0]]}
        winning_con = win_con
    end

    
    if(winning_con && !(win_con[0] == "" || win_con[0] == " " || win_con[0] == nil))
      break

  end



#    if ((board[win_con[0]] == board[win_con[1]] && board[win_con[1]] == board[win_con[2]]) && (win_con[0] != "" || win_con[0] != nil || win_con[0] != " "))
#      winning_con = win_con
##  end

  winning_con
end
