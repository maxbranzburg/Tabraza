class AddProvidorToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :providor, index: true
  end
end
