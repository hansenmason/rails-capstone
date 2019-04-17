class CreateFourgames < ActiveRecord::Migration[5.2]
  def change
    create_table :fourgames do |t|
      t.text :pico
      t.text :fumi
      t.text :bagel
      t.string :number

      t.timestamps
    end
  end
end
