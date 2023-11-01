class Trainer < ApplicationRecord
    has_and_belongs_to_many :pokemons
    has_one :regions

    validates :name, :gender, :age, presence: true
    validates :gender, inclusion: { in: ["Male", "Female"] }
    validates :age, numericality: { greater_than_or_equal_to: 16, less_than_or_equal_to: 65 }
end
