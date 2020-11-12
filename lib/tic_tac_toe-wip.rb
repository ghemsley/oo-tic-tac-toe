class TicTacToe
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 4, 8],
    [2, 4, 6],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

  attr_accessor :board

  def initialize
    @board = []
    9.times do
      @board.push(' ')
    end
  end

  def display_board
    puts " #{self.board[0]} | #{self.board[1]} | #{self.board[2]} "
    puts "-----------"
    puts " #{self.board[3]} | #{self.board[4]} | #{self.board[5]} "
    puts "-----------"
    puts " #{self.board[6]} | #{self.board[7]} | #{self.board[8]} "
  end

  def input_to_index(string)
    index = string.to_i
    index -= 1
    index
  end

  def move(index, player = 'X')
    self.board[player] = 1
  end

end
