class AddCoordinatesToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :latitude, :float
    add_column :transactions, :longitude, :float
  end
end
