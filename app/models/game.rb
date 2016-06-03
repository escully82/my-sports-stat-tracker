# == Schema Information
#
# Table name: games
#
#  id            :integer          not null, primary key
#  game_time     :string
#  game_location :string
#  home_team     :string
#  away_team     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Game < ActiveRecord::Base

  validates :game_time,     presence: true
  validates :game_location, presence: true
  validates :home_team,     presence: true
  validates :away_team,     presence: true

  belongs_to :team
  has_many   :stats

end
