class ConcentrationController < ApplicationController
  
  def index
    @concentrations = Concentration.all
  end

  def show
    @concentation = Concentration.find(params[:id])
    @courses = @concentration.courses.to_ary.sort!{ |a,b| a.name <=> b.name }
  end

end
