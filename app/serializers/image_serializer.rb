class ImageSerializer < ActiveModel::Serializer
 
  attributes :id, :title, :national_park, :svg_url, :component, :year, :location, :description
end
