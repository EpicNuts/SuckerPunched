class AddEpicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Epic, :string
  end
end
