class CreateDogparks < ActiveRecord::Migration
  def self.up
    create_table :dogparks do |t|
      t.string :name
      t.string :state
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :dogparks
  end
end
