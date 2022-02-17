class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
  has_many :bookmarks

end


#You can’t delete a movie if it is referenced in at least one bookmark.
