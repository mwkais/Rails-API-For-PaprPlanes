class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :post_accesss
end
