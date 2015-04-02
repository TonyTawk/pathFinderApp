class CreateAdditionalEmails < ActiveRecord::Migration
  def change
    create_table :additional_emails do |t|
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
