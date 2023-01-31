class Author < ApplicationRecord
    has_many :books,  dependent: :destroy
  validates :name, presence: true, length: { minimum: 5 }
end
