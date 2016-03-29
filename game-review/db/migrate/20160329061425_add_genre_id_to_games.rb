class AddGenreIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :genre_id, :integer
  end
end
