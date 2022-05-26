class Comment < ApplicationRecord

  has_many :comment_favs
  belongs_to :user
  belongs_to :post

  validates :text, presence: true

end
