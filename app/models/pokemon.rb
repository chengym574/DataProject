class Pokemon < ApplicationRecord
    has_and_belongs_to_many :trainers

    validates :name, :attack, :hp, :defense, :sp_attack, :sp_defense, :speed, :type_one, presence: true
    validates :attack, numericality: { greater_than_or_equal_to: 0 }
    validates :hp, numericality: { greater_than_or_equal_to: 0 }
    validates :defense, numericality: { greater_than_or_equal_to: 0 }
    validates :sp_attack, numericality: { greater_than_or_equal_to: 0 }
    validates :sp_defense, numericality: { greater_than_or_equal_to: 0 }
    validates :speed, numericality: { greater_than_or_equal_to: 0 }
end
