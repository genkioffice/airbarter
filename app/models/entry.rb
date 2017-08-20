class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :quantity, :numericality => {:greater_than => 0}, presence: true

  def self.remove_from_inventory(user, product, quantity)
    entry = self.where(user_id: user.id).where(product_id: product.id).first
    if entry && entry.quantity > quantity
      entry.quantity -= quantity
      entry.save
    else
      # We should not arrive here, case should be prevented in the view.
    end
  end

  def self.add_to_inventory(user, product, quantity)
    entry = self.where(user_id: user.id).where(product_id: product.id).first
    if entry
      entry.quantity += quantity
      entry.save
    else
      self.create(user: user, product: product, quantity: quantity)
    end
  end
end
