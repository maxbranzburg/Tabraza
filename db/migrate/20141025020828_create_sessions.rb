class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :platform_course_id
      t.text :url
      t.boolean :active
      t.text :duration
      t.integer :startDay
      t.integer :startMonth
      t.integer :startYear
      t.text :session_name
      t.datetime :openDate
      t.datetime :closeDate
      t.decimal :price

      t.timestamps
    end
  end
end
