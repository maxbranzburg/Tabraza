class AddCourseToSessions < ActiveRecord::Migration
  def change
    add_reference :sessions, :course, index: true
  end
end
