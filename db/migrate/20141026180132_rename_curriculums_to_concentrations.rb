class RenameCurriculumsToConcentrations < ActiveRecord::Migration
  def self.up
        rename_table :curriculums, :concentrations
      end
     def self.down
        rename_table :concentrations, :curriculums
     end
end
