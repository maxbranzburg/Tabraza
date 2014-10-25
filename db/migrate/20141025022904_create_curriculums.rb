class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.text :name
      t.text :skill_level
      t.integer :estimated_months
      t.text :concentration

      t.timestamps
    end
  end
end
