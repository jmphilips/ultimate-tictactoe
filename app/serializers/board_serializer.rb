class BoardSerializer < ActiveModel::Serializer
  attributes :id, :winner, :turn, :valid_subgames, :board

  def board
    object.sub_boards.map { |sub_board| sub_board.board_placements}
  end

  def valid_subgames
    object.valid_subgame.nil? ? [0, 1, 2, 3, 4, 5, 6, 7, 8] : object.valid_subgame
  end
end
