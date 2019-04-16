class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :pico
      t.text :fumi
      t.text :bagel

      t.timestamps
    end
  end
end
