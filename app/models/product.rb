class Product < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :users, through: :entries

  has_many :proposed_transactions, class_name: 'Transaction', foreign_key: 'proposed_product_id', dependent: :destroy
  has_many :proposed_by_users, class_name: 'User', foreign_key: 'proposed_by_user_id', through: :proposed_transactions
  has_many :wanted_transactions, class_name: 'Transaction', foreign_key: 'wanted_product_id', dependent: :destroy
  has_many :wanted_by_users, class_name: 'User', foreign_key: 'wanted_by_user_id', through: :wanted_transactions

  has_attachment :photo
  accepts_nested_attributes_for :entries
  accepts_nested_attributes_for :users
  validates :name, presence: true

  def translated_name
    if I18n.locale == :ja && self.name_ja
      return self.name_ja
    elsif I18n.locale == :da && self.name_da
      return self.name_da
    elsif I18n.locale == :ar && self.name_ar
      return self.name_ar
    elsif I18n.locale == :fr && self.name_fr
      return self.name_fr
    else
      return self.name
    end
  end

  def translate_name!
    EasyTranslate.api_key = ENV['GOOGLE_TRANSLATE_API_KEY']
    self.name_ja = EasyTranslate.translate(self.name, from: :en, to: :ja).capitalize
    self.name_da = EasyTranslate.translate(self.name, from: :en, to: :da).capitalize
    self.name_ar = EasyTranslate.translate(self.name, from: :en, to: :ar).capitalize
    self.name_fr = EasyTranslate.translate(self.name, from: :en, to: :fr).capitalize
    self.save
  end

end

