class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :inboxs, foreign_key: :sender_id
  has_many :inboxs, foreign_key: :receiver_id
  has_many :messages, foreign_key: :sender_id
  has_many :messages, foreign_key: :receiver_id
  has_many :favorites, foreign_key: :favorited_by
  has_many :favorites, foreign_key: :you_favorited
end