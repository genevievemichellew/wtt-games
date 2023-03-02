class ChangeColumnStatusOnRents < ActiveRecord::Migration[7.0]
  def change
    remove_column :rents, :status
    add_column :rents, :status, :integer, default: 0
  end
end
