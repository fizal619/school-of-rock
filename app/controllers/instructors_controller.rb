class InstructorsController < ApplicationController
  def index
    @instructor = Instructor.new
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def create
    Instructor.create(instructor_params)
    redirect_to '/instructors'
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    @instructor.save
    redirect_to '/instructors'
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to '/instructors'
  end

  private
    def instructor_params
      params.require(:instructor).permit(:name, :age, :salary, :education)
    end

end
