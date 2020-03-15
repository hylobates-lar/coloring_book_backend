class ImageSerializer < ActiveModel::Serializer
  has_many :user_images
  has_many :users, through: :user_images
  attributes :id, :title, :national_park, :svg_url, :component
end
