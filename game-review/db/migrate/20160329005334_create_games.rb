class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.string :developer
      t.string :publisher
      t.string :rating

      t.timestamps null: false
    end
  end
end
