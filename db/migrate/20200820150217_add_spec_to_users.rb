class AddSpecToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :specialism, :string
  end
end
