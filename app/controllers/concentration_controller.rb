class ConcentrationController < ApplicationController
  
  def index
    @concentrations = Concentration.all
  end

  def show
    @concentration = Concentration.find(params[:id])
    @courses = @concentration.courses
  end

end
