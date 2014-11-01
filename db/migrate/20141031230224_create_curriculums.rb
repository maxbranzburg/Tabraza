class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.integer :course_id
      t.integer :concentration_id

      t.timestamps
    end
  end
end
