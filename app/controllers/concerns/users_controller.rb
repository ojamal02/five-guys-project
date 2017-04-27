class UsersController < ApplicationController

  def index
    @users = User.all
  end

 def show
   if current_user.present?
     @user = current_user
    #  @users_burgers = @user.burgers
   else
     redirect_to new_user_session_path
   end
 end

 def update
  if !params[:user].nil?
    @user = current_user
    @user.avatar = params[:user][:avatar]
    @user.save!
    flash[:notice] = "Avatar successfully saved!"
    redirect_to user_path(current_user)
  else
    flash[:error] = "No photo was selected!"
    redirect_to edit_user_avatar_path(current_user)
  end
 end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "User Profile Deleted"
    redirect_to user_path
  end

end
