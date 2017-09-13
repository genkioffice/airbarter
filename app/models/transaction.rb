class Transaction < ApplicationRecord
  belongs_to :proposed_product, :class_name => 'Product'
  belongs_to :proposed_by_user, :class_name => 'User'
  belongs_to :wanted_product, :class_name => 'Product'
  belongs_to :accepted_by_user, :class_name => 'User', optional: true

  has_attachments :photos, maximum: 3

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :proposed_product_quantity, :numericality => {:greater_than => 0}, presence: true
  validates :wanted_product_quantity, :numericality => {:greater_than => 0}, presence: true

  def translated_description
    EasyTranslate.api_key = ENV['GOOGLE_TRANSLATE_API_KEY']
    return EasyTranslate.translate(self.description, to: I18n.locale)
  end

  def change_status!(status)
    self.status = status
    self.save
  end

  def to_marker
    {'lat' => latitude, 'lng' => longitude}
  end

  enum status: [:proposed, :accepted, :removed]
end
