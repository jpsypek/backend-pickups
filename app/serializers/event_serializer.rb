class EventSerializer < ActiveModel::Serializer
  attributes :id, :sport, :time, :skill_level, :latitude, :longitude, :users, :user_events, :owner
end
