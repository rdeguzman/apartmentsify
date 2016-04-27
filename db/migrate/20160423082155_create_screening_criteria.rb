class CreateScreeningCriteria < ActiveRecord::Migration
  def change
    create_table :screening_criterias do |t|
      t.references  :user, index: true
      t.references  :property, index: true

      t.string      :age_group, :default => 'ANY'
      t.integer     :acceptable_monthly_income , :default => '2000'
      t.integer     :credit_score

      t.timestamps null: false
    end
  end
end
