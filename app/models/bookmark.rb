class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: 'is already in the list' }

  belongs_to :movie
  belongs_to :list
end
