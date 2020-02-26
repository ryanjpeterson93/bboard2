class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :destroy]

  def index
    @billboards = Billboard.all
  end

  def show
  end

  def new
    @bilboard = Billboard.new
  end

  def edit

  end

  def create
    @billboard = Billboard.new(billboard_params)

    if @billboard.save
      redirect_to @billboard
    else
      render :new
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private
    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

    def user_params
      params.require(:billboard).permit(:name)
    end
end
