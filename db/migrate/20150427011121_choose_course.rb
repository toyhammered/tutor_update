class ChooseCourse < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
    end
  end
  
  def self.down
    drop_table :courses
  end
  
end

