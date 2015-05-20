class ChooseTutor < ActiveRecord::Migration
  def self.up
    create_table :tutors do |t|
      t.belongs_to :course, index:true
      t.string :name
      t.string :email
      
    end
   # how to add foreign key
  end
  
  def self.down
    drop_table :tutors
  end
end
