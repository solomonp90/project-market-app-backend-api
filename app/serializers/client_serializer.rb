class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :password_digest, :image, :domain
end
