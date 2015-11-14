class Property < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  validates :property_type, presence: true

  validates :address, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true
  validates :state, presence: true

  validates :description, presence: true

  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :car_spaces, presence: true
end
