class UserFriend < ApplicationRecord
  belongs_to :user, optional: true
end
