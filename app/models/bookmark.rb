class Bookmark < ApplicationRecord
  belongs_to :movie # gives access to bookmark.movie
  belongs_to :list # gives access to bookmark.list
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
  has_one_attached :photo
end
