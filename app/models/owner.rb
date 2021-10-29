class Owner < ApplicationRecord
    has_many :dogs
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2 }
end
