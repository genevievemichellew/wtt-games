class AddAddressToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :address, :string
  end
end
