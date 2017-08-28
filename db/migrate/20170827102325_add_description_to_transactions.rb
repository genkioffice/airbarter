class AddDescriptionToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :description, :text
  end
end
