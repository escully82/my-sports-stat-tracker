class StatsController < ApplicationController

  def index
    @stats = Stat.all
  end

  def new
    @stat = Stat.new
  end

  def create
    @stat = Stat.new(stat_params)
    if @stat.save
      redirect_to :stats
    else
      flash.now[:alert] = "Stat not saved."
      render :new
    end
  end

  private
    def stat_params
      params.require(:stat).permit(:player)
    end

end
