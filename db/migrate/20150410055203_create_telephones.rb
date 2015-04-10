class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :number
      t.string :country_code
      t.string :type

      t.timestamps
    end
  end
end
