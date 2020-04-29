class CaresController < ApplicationController
  def index
    @cares = Care.all
  end

  def show
    @care = Care.find(params[:id])
  end

  def new
    @care = Care.new
  end

  def create
    @care = Care.new(care_params)
    if @care.save
      redirect_to cares_path
    else
      render 'new'
    end
  end

  def edit
    @care = Care.find(params[:id])
  end

  def update
    @care = Care.find(params[:id])
    @care.update(care_params)
    redirect_to care_path(@care)
  end

  def destroy
    @care = Care.find(params[:id])
    @care.destroy
  end

  private

  def care_params
    params.require(:care).permit(:name, :price, :duration)
  end
end
