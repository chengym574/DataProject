class Region < ApplicationRecord
    validates :location, presence: true, uniqueness: true
end
