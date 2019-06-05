class EventSerializer < ActiveModel::Serializer
  attributes :id, :sport, :time, :date, :skill_level, :location, :latitude, :longitude, :users
end
