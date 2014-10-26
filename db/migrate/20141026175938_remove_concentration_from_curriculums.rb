class RemoveConcentrationFromCurriculums < ActiveRecord::Migration
  def change
  	remove_column :curriculums, :concentration
  end
end
