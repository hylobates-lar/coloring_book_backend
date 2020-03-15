class UserImageSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :image 
  attributes :id, :user_id, :image_id, :fill_colors
end
