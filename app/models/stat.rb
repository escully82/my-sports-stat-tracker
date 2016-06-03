# == Schema Information
#
# Table name: stats
#
#  id         :integer          not null, primary key
#  pass       :integer
#  rush       :integer
#  rec        :integer
#  off_yards  :integer
#  off_td     :integer
#  xp_1       :integer
#  xp_2       :integer
#  off_int    :integer
#  off_fum    :integer
#  tkl        :integer
#  sack       :integer
#  def_int    :integer
#  ffum       :integer
#  fmrc       :integer
#  pbu        :integer
#  def_td     :integer
#  def_xp     :integer
#  player_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stat < ActiveRecord::Base

  validates :player, presence: true

  belongs_to :player
  belongs_to :game

end
