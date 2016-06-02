# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base

  validates :name,     presence: true, uniqueness: true
  validates :player,   presence: true

  has_many :players

end
