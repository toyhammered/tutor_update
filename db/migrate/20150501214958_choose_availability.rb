class ChooseAvailability < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.belongs_to :tutor, index:true
      t.string :day
      t.string :time
      t.time :start_time
      t.time :end_time
      t.integer :room
      
      
    end
   # how to add foreign key
  end
  
  def self.down
    drop_table :availabilities
  end
end
