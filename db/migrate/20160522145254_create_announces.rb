class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.integer :price
      t.text :description
      t.integer :bed
      t.integer :bath
      t.integer :surface
      t.integer :user_id
      t.string :title
      t.string :announce_type
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :class_energy
      t.string :ges

      t.timestamps null: false
    end
  end
end
