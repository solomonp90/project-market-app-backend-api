class ContractSerializer < ActiveModel::Serializer
  attributes :id, :signature, :project_id, :developer_id
  has_one :project
  has_one :developer
end
