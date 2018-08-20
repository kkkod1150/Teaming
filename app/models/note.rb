class Note < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :user, presence: true
end
