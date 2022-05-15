class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: { male: 0, female: 1, other: 2 }

  has_one_attached :image

  has_many :posts
  has_many :comments
  has_many :relationships
  has_many :follow_games
  has_many :post_favs
  has_many :comment_favs

end
