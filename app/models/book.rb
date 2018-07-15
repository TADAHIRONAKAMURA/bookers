class Book < ApplicationRecord


  # titleは必須
  validates :title, presence: true
  # bodyは必須
  validates :body, presence: true




end
