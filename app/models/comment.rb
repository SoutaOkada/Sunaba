class Comment < ApplicationRecord
  
  has_many :comment_favs
  belongs_to :users
  belongs_to :posts
  
end
