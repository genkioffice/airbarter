class AddTranslationsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :name_ja, :string
    add_column :products, :name_da, :string
    add_column :products, :name_ar, :string
    add_column :products, :name_fr, :string
  end
end
