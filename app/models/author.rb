class Author < ApplicationRecord
    #validates :title, presence: true
    #validates :name, presence: true, length: { minimum: 6 }
    has_many :books, -> { order(year_published: :desc) }
  end
  