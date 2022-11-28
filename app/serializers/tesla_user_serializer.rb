class TeslaUserSerializer < ActiveModel::Serializer
  attributes :id, :model, :price, :image_url, :highlights, :instock , :description
  has_many :users
end
