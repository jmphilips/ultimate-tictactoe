class CreateSubBoard < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_boards do |t|
      t.string :topl
      t.string :topc
      t.string :topr
      t.string :midl
      t.string :midc
      t.string :midr
      t.string :botl
      t.string :botc
      t.string :botr
      t.string :winner
      t.integer :position
    end
  end
end
