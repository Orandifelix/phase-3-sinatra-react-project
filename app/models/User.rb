class User < ActiveRecord::Base
  has_one :profile
  has_many :favorites
  has_one :inbox
  has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'
  has_many :received_messages, foreign_key: :receiver_id, class_name: 'Message'
end