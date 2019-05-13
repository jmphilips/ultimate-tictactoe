class CreateBoard < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :winner
      t.string :turn
      t.integer :valid_subgame
    end
  end
end
