class Book < ApplicationRecord
  validates :book_name, presence: true

  belongs_to :user
  has_many :mentalmaps
  has_many :curiosity_gaps
  has_many :resumes
  has_many :visualizings
  has_many :summarizings
  has_many :questionings
end
