class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  #adding validation
  validates :title, presence: true, length: {minimum: 5}
  validates :text, presence: true, length: { minimum: 5 }
end
