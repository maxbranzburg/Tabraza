class WelcomeController < ApplicationController

  def index
  	
	@concentration_a = Concentration.find(2)
	@concentration_b = Concentration.find(4)
  	@concentration_c = Concentration.find(3)
  	
  end

end
