class IntroductionsController < ApplicationController
  
  before_action :authenticate_user!, only: [:create]
  def index
    @introduction = Introduction.all
  end

  def new
    @introduction = Introduction.new
  end

  def create
    @introduction = Introduction.new(introduction_params)
    if @introduction.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def introduction_params
    params.require(:introduction).permit(:image, :name, :nickname, :birthday, :age, :birthplace, :personality, :hobby, :skill, :music, :food, :study_abroad, :comment).merge(user_id: current_user.id)
  end

end
