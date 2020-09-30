class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true, allow_blank: false, length: { maximum: 1000 }
end
