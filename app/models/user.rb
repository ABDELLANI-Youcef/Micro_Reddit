class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
end
