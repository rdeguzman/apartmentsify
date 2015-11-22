class AddFieldsToUser < ActiveRecord::Migration
  def up
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
  end

  def down
  	remove_column :users, :provider, :uid, :image
  end

end
