class LoginController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(email: params[:login][:email].downcase)
    if student && Student.authenticate(params[:login] [:password])
      session[:student_id] = student.id
      flash[:notice] = 'You have successfully logged in.'
      redirect_to student
    else
      flash.now[:notice] = 'Something was wrong with your login.'
      render 'new'
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:notice] = 'Bye, successfully logged out'
    redirect_to root_path
  end

end