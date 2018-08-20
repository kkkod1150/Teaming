class Comment < ApplicationRecord
  belongs_to :note
  belongs_to :user
  validates :user, presence: true
end
