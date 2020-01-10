class Developer < ApplicationRecord
    has_many :contracts
    has_many :projects ,through: :contracts
    has_many :clients ,through: :projects
    has_secure_password

    validates :first_name, presence: true
    validates :last_name, presence: true
end
