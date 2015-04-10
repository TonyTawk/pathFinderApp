class User < ActiveRecord::Base

  has_many :additional_emails
  has_one :location
  has_many :telephones


  # Run the following test:  rake test test/models/user_test.rb test_should_not_save_user_without_first_name
  # with and without the following line

  validates :first_name, presence: true

  accepts_nested_attributes_for :location, :additional_emails, :telephones

end
