class AddNumberToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :number, :string
  end
end
