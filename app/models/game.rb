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
end
