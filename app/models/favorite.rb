class Favorite < ApplicationRecord

  validates :user_id, :uniqueness => {:scope => :message_id}

  belongs_to :user
  belongs_to :message
end
