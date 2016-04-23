class AddWeeklyRentToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :weekly_rent, :integer, default: 0, null: false
  end
end
