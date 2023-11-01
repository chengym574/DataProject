class Region < ApplicationRecord
    has_many :trainers

    validates :location, presence: true, uniqueness: true
end
