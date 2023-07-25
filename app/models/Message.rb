class Message < ActiveRecord::Base
  belongs_to :inbox
  belongs_to :sender, class_name: 'Profile', foreign_key: :sender_id
  belongs_to :receiver, class_name: 'Profile', foreign_key: :receiver_id
end