class RenameTelePhonesColumn < ActiveRecord::Migration
  def change
    rename_column :telephones, :type, :phone_type
  end
end
