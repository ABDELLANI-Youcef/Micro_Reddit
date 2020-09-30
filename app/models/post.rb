class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { maximum: 1000,  too_long: "%{count} characters is the maximum allowed" }, allow_blank: false, length: { minimum: 5 }
end
