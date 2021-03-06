class Client < ApplicationRecord
    has_many :projects, dependent: :destroy
    has_many :contracts ,through: :projects
    has_many :developers,through: :contracts

    has_secure_password

    validates :first_name, presence: true, uniqueness:true
    # validates :last_name, presence: true, uniqueness:true
end
