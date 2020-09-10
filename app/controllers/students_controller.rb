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
      flash[:notice] = 'You are in!!'
      redirect_to root_path
     else
      render 'new'
     end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
     if @student.update(student_params)
      flash[:notice] = 'You have update your profile!'
      redirect_to @student
     else
      render 'edit'
     end
  end

  def show
    @student = Student.find(params[:id])
  end

  private
    def student_params
      params.require(:student).permit(:name, :email)
    end
end
