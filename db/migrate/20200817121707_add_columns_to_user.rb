class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :consultant, :boolean
    add_column :users, :price_per_hour, :integer
    add_column :users, :cv, :text
    add_column :users, :github, :string
    add_column :users, :medium, :string
    add_column :users, :profile_website, :string
    add_column :users, :linkedin, :string
  end
end
