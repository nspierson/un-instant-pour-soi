class LatestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :index]
  def index
    @latests = Latest.all
  end

  def new
    @latest = Latest.new
  end

  def create
    @latest = Latest.new(latest_params)
    if @latest.save
      redirect_to latests_path
    else
      render 'new'
    end
  end

  private

  def latest_params
    params.require(:latest).permit(:name, :comment)
  end
end
