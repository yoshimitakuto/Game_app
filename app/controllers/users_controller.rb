class UsersController < ApplicationController
  before_action :paramsid_set, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "情報の編集が完了しました"
      redirect_to user_path(@user)
    else
      flash[:notice] = "情報の編集に失敗しました"
      redirect_to request.referer
    end

  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def paramsid_set
     @user = User.find(params[:id])
  end

end
