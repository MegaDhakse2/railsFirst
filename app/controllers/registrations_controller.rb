  class RegistrationsController < ApplicationController
    def new
      @user = User.new
    end
    def create
      @user = User.new(user_params)




     if @user.save
        flash[:success] = "Your data saved successfully"
        redirect_to secondPage_path

    elsif @user.password
          flash[:pass] = "pass must in format.. Check once the password must contain atleast 8 digits with one upper, lower letters, a number and special character"
          redirect_to sign_up_path
    elsif @user.password != @user.password_digest
            flash[:matchpass] = "password and confirm password must be same"
          redirect_to sign_up_path
          # render :new

      else
        flash[:error] = "Something went wrong.. "
        redirect_to sign_up_path
      end
    end

    private
    def user_params
      params.require(:user).permit(:userName, :password, :password_digest)
    end
  end
