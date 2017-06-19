class PostAccess < ApplicationRecord
  belongs_to :Post
  has_many :Users
end
