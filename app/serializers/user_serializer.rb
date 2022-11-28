class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :comment, :rating
end
