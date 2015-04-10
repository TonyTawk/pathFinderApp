class RenameTelePhonesColumn2 < ActiveRecord::Migration
  def change
    rename_column :telephones, :country_code, :cc
  end
end
