require "csv"

Pokemon.delete_all
Trainer.delete_all
Region.delete_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='pokemons';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='trainers';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='regions';")

file = Rails.root.join("db/pokemon.csv")
puts "Loading Pokemon: #{file}"

CSV.foreach(file, headers: true) do |row|
    pokemon_data = {
      name: row["name"],
      attack: row["attack"],
      hp: row["hp"],
      defense: row["defense"],
      sp_attack: row["sp_attack"],
      sp_defense: row["sp_defense"],
      speed: row["speed"],
      type_one: row["type1"],
      type_two: row["type2"]
    }
  
    Pokemon.create(pokemon_data)
  end

  50.times do
    Trainer.create(
      name: Faker::Name.name,
      gender: Faker::Gender.binary_type,
      age: Faker::Number.between(from: 16, to: 65)
    )
  end
  
used_locations = []

25.times do
  unique_location = nil
  while unique_location.nil? || used_locations.include?(unique_location)
    unique_location = Faker::Games::Pokemon.location
  end
  Region.create(location: unique_location)
  used_locations << unique_location
end