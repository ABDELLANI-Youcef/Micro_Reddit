# rubocop:disable Layout/LineLength
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { maximum: 1000, too_long: '%<count>s characters is the maximum allowed', minimum: 5 }, allow_blank: false
end
# rubocop:enable Layout/LineLength
