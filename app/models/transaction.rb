class Transaction < ApplicationRecord
  belongs_to :proposed_product, :class_name => 'Product'
  belongs_to :proposed_by_user, :class_name => 'User'
  belongs_to :wanted_product, :class_name => 'Product'
  belongs_to :accepted_by_user, :class_name => 'User', optional: true

  def change_status!(status)
    self.status = status
    self.save
  end

  enum status: [:proposed, :accepted, :removed]
end
