class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
     @student = Student.new(student_params)
     if @student.save
      flash[:success] = 'You are in!!'
      redirect_to root_path
     else
      render 'new'
      flash[:notice] = 'You are in!!'
     end
  end

  private
    def student_params
      params.require(:student).permit(:name, :email)
    end
end