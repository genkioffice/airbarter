class AddAddressToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :address, :string
  end
end
