class Product < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :users, through: :entries

  has_many :proposed_transactions, class_name: 'Transaction', foreign_key: 'proposed_product_id', dependent: :destroy
  has_many :proposed_by_users, class_name: 'User', foreign_key: 'proposed_by_user_id', through: :proposed_transactions
  has_many :wanted_transactions, class_name: 'Transaction', foreign_key: 'wanted_product_id', dependent: :destroy
  has_many :wanted_by_users, class_name: 'User', foreign_key: 'wanted_by_user_id', through: :wanted_transactions

  accepts_nested_attributes_for :entries
  accepts_nested_attributes_for :users
  validates :name, presence: true

end
