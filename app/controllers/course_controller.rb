class CourseController < ApplicationController
  
  def index
  	@courses = Course.all
  end

  def show
  	@course = Course.find(params[:id])
  	@first_session_url = @course.sessions.first.url
  	@providor = @course.providor
  	@instructor = @course.instructor
  end
  
end
