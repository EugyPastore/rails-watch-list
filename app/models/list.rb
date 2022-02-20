class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :bookmarks, dependent: :destroy #list.bookmarks
  has_many :movies, through: :bookmarks #(list.movies)
  has_one_attached :photo
end
