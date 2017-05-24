class User < ApplicationRecord
  has_many :posts
  has_many :post_accesss
  has_many :user_friends 
end
