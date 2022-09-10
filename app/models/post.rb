class Post < ApplicationRecord

  has_many :comments
  has_many :post_favs
  belongs_to :game
  belongs_to :user

  validates :title, presence: true
  validates :post_text, presence: true

end
