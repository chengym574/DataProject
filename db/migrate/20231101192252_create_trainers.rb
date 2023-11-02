class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
