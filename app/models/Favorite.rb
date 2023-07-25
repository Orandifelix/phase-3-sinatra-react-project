class Favorite < ActiveRecord::Base
  belongs_to :favorited_by, class_name: 'Profile', foreign_key: :favorited_by
  belongs_to :you_favorited, class_name: 'Profile', foreign_key: :you_favorited
end