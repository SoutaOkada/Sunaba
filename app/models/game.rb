class Game < ApplicationRecord

    has_many :follow_games
    has_many :users, through: :follow_games
    has_many :posts
    has_many :game_links

    def self.looks(search, word)
      if search == "perfect_match"
        @game = Game.where("game_title LIKE?", "#{word}")
      elsif search == "forward_match"
        @game = Game.where("game_title LIKE?", "#{word}%")
      elsif search == "backward_match"
        @game = Game.where("game_title LIKE?", "%#{word}")
      elsif search == "partial_match"
        @game = Game.where("game_title LIKE?", "%#{word}%")
      else
        @game = Game.all
      end
    end

end
