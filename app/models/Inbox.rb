class Inbox < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile
  has_many :messages
end
