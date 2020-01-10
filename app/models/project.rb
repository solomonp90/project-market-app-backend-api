class Project < ApplicationRecord
  belongs_to :client
  has_one :contract
end
