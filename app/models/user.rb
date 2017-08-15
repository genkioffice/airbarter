class User < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :products, through: :entries

  has_many :proposed_transactions, class_name: 'Transaction', foreign_key: 'proposed_by_user_id', dependent: :destroy
  has_many :proposed_products, class_name: 'Product', foreign_key: 'proposed_products_id', through: :proposed_transactions
  has_many :accepted_transactions, class_name: 'Transaction', foreign_key: 'accepted_by_user_id', dependent: :destroy
  has_many :accepted_products, class_name: 'Product', foreign_key: 'accepted_by_user_id', through: :accepted_transactions


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

