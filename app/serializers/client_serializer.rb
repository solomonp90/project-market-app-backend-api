class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name,:username, :password_digest, :image, :domain,:kind,:projects
end
