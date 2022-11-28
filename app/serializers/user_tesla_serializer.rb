class UserTeslaSerializer < ActiveModel::Serializer
  attributes :name, :comment
  has_many :teslas
end
