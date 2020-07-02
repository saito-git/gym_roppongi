class GymsController < ApplicationController

  def show
   @gym = Gym.find(params[:id])
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @gym
     # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end

  private

     def gym_params
       params.require(:gym).permit(:name, :address, :password, :password_confirmation)
     end

end
