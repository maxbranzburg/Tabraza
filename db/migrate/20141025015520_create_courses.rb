class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :platform_course_id
      t.text :platform
      t.text :providor
      t.text :name
      t.text :description
      t.text :category
      t.text :duration
      t.text :instructor
      t.text :language
      t.text :photo
      t.text :video
      t.text :url
      t.decimal :price
      t.integer :hours_per_week

      t.timestamps
    end
  end
end
