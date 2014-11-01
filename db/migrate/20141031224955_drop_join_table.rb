class DropJoinTable < ActiveRecord::Migration
  def change
 	 drop_table :concentrations_courses 
  end
end
