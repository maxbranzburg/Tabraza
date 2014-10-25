class WelcomeController < ApplicationController

  def index
  	@course_a = Course.find(104)
  	@course_b = Course.find(121)
  	@course_c = Course.find(693)
  	@course_d = Course.find(174)
  end

end
