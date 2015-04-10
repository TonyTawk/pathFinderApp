class User < ActiveRecord::Base
  has_many :additional_emails
  has_one :location
  has_many :telephones

end
