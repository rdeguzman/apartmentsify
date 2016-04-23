class Property < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_one  :screening_criteria

  validates :property_type, presence: true

  validates :address, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true
  validates :state, presence: true

  validates :description, presence: true

  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :car_spaces, presence: true

  def full_address
    return "#{address}, #{suburb}, #{state.upcase}, #{postcode}"
  end

  def weekly_rent_formatted
    return "$ #{weekly_rent} pw"
  end
end
