class AddUserToFourgame < ActiveRecord::Migration[5.2]
  def change
    add_reference :fourgames, :user, foreign_key: true
  end
end
