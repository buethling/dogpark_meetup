class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.integer :dogpark_id
      t.date :date
      t.time :arrival_time
      t.integer :duration
      t.integer :dog_size

      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
