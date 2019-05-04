class ToppagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @tasks
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :index
    end
  end
  
  private
  
 
end
