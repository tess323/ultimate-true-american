class Player < ActiveRecord::Base
  belongs_to :game

  validate :player_is_user

  def player_is_user
  end
end
