class ChooseAvailability < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.belongs_to :tutor, index:true
      t.string :day
      t.time :from
      t.time :to
      
      
    end
   # how to add foreign key
  end
  
  def self.down
    drop_table :availabilities
  end
end
