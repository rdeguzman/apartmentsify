class ScreeningCriteria < ActiveRecord::Base
  belongs_to :user
  belongs_to :property

  #validates :age_group, presence: true
  #validates :acceptable_monthly_income, presence: true

end
