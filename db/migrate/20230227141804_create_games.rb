class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :photo
      t.string :platform
      t.integer :price

      t.timestamps
    end
  end
end
