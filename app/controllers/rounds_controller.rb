class RoundsController < ApplicationController


  def index
    @round = Round.new(params[:index], params[:group], params[:name])
    if @round.play!(params[:choice])
      render :index
    else
      redirect_to success_path
    end
  end

  def success
  end

  def groups
  end

  def your_name
    @group = params[:group_id]
  end

end
