class Post < ApplicationRecord
  belongs_to :User
  has_many :Post_accesss
end 
