class RemoveCvFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :cv
  end
end
