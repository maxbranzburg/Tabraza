class ProvidorController < ApplicationController
  def index
  	@providors = Providor.all
  end

  def show
  	@providor = Providor.find(params[:id])
  	@courses = @providor.courses
  	@course_term = Providor.course_plurality(@courses)
  end
end