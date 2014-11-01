class WelcomeController < ApplicationController

  def index
  	
	@concentration_a = Concentration.find(2)
  	@concentration_b = Concentration.find(3)
  	@concentration_c = Concentration.find(4)
  	
  end

end
