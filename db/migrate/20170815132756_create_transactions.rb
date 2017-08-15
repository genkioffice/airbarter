class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :proposed_product
      t.integer :proposed_product_quantity
      t.references :proposed_by_user
      t.references :wanted_product
      t.integer :wanted_product_quantity
      t.references :accepted_by_user
      t.integer :status

      t.timestamps
    end
  end
end
