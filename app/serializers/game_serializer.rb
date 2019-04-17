class GameSerializer < ActiveModel::Serializer
  attributes :id, :pico, :fumi, :bagel, :number, :user_id
end
