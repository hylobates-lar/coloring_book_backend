class UserSerializer < ActiveModel::Serializer
  has_many :user_images
  has_many :images, through: :user_images
  attributes :id, :username
end
