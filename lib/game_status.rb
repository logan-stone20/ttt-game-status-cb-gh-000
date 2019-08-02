# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[3]
    if board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      return combination
    end
    if board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      return combination
    end
  end
end
