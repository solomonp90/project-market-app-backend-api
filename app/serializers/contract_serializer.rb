class ContractSerializer < ActiveModel::Serializer
  attributes :id, :signature
  has_one :project
  has_one :developer
end
