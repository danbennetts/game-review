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

  has_attached_file :game_img, styles: { game_index: "250x350>", game_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :game_img, content_type: /\Aimage\/.*\Z/
end
