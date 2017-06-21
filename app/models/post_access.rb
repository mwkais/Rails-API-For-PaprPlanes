class PostAccess < ApplicationRecord
  belongs_to :Post, optional: true
  has_many :Users
end
