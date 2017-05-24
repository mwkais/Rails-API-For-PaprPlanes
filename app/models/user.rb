class User < ApplicationRecord
  has_many :posts
  has_many :user_friends
end
