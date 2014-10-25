class CurriculumController < ApplicationController
  
  def index
    @curriculums = Curriculum.all
  end

  def show
    @curriculum = Curriculum.find(params[:id])
    @courses = @curriculum.courses.to_ary.sort!{ |a,b| a.name <=> b.name }
  end

end
