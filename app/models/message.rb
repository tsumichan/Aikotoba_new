class Message < ApplicationRecord
  validates :contents, presence: true

  has_many :favorites, dependent: :destroy
  has_many :user, through: :favorites
end
