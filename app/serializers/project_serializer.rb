class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description, :stipulation
  has_one :client
end
