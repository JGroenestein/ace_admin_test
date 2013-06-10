class AddSkinToUsers < ActiveRecord::Migration
  def change
    add_column :users, :skin, :integer
  end
end
