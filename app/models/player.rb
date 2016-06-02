# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  number     :string
#  position   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base

  validates :name    , presence: true
  validates :position, presence: true
  validates :number,   presence: true, uniqueness: true

  has_many   :stats
  belongs_to :team

end
