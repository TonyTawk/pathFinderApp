class AddUserIdToTelephones < ActiveRecord::Migration
  def change
    add_column :telephones, :user_id, :integer
  end
end
