class ScreeningCriteria < ActiveRecord::Base
  self.table_name = 'screening_criterias'

  belongs_to :user
  belongs_to :property

  #validates :age_group, presence: true
  #validates :acceptable_monthly_income, presence: true

end