class Game < ApplicationRecord

    has_many :follow_games
    has_many :users, through: :follow_games
    has_many :posts
    has_many :game_links

end
