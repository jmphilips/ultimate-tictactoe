class Board < ApplicationRecord
  has_many :sub_boards
  after_create :create_sub_boards
  after_initialize :init

  def init
    self.winner = ''
    self.turn = 'O'
  end

  def create_sub_boards
    (0..8).each do |n|
      SubBoard.create!(position: n, board: self)
    end
  end

  def add_move(position, sub_board_move)
    sub_board = self.sub_boards.find_by(position: position)
    sub_board.add_move(sub_board_move, self.turn)
  end

  def update_turn(current_player)
    self.turn = current_player == 'X' ? 'O' : 'X'
  end
end