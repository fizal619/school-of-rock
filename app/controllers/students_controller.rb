class StudentsController < ApplicationController
 def index
    @student = Student.new
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(student_params)
    redirect_to '/students'
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    @student.save
    redirect_to '/students'
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to '/students'
  end

  private
    def student_params
      params.require(:student).permit(:name, :age, :education)
    end

end
