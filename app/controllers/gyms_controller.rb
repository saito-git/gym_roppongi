class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
  end

  def new
    @gym = Gym.new
  end

  def edit
  end

  def create
    @gym = Gym.new(gym_params)
    @gym.id = current_gym.id
    @gym.save
    redirect_to gym_path(@gym)
  end

  private
  def gym_params
    params.require(:gym).permit(:title, :body, :img, :remove_img)
  end
end
