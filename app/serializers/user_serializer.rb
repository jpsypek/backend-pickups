class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :bio, :events, :user_events
end
