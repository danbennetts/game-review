# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  game_id    :integer
#

class Review < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
end
