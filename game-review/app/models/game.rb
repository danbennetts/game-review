# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  developer   :string
#  publisher   :string
#  rating      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  genre_id    :integer
#

class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre
end
