class Master
  INGREDIENTS_TO_WIN = 5

  class << self
    def find_winner
      Player.joins(:ingredients).group('players.id').having('count(player_id) = ?', INGREDIENTS_TO_WIN).first
    end
  end
end
