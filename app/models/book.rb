class Book < ApplicationRecord
  validates :book_name, presence: true

  belongs_to :user
end
