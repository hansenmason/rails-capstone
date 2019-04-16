class GameSerializer < ActiveModel::Serializer
  attributes :id, :pico, :fumi, :bagel, :number
end
