class AddSubboard < ActiveRecord::Migration[5.1]
  def change
    add_reference :sub_boards, :board, index: true
  end
end
