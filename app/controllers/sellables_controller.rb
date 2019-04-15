class SellablesController < ApplicationController
  before_action :set_sellable, only: [:show, :edit, :update, :destroy]


  def index
    @sellables = Sellable.all
  end


  def show
    set_sellable
  end


  def new
    @sellable = Sellable.new
  end


  def edit
  end


  def create
    @sellable = Sellable.new(sellable_params)

    respond_to do |format|
      if @sellable.save
        format.html {redirect_to @sellable, notice: 'Sellable was successfully created.'}
        format.json {render :show, status: :created, location: @sellable}
      else
        format.html {render :new}
        format.json {render json: @sellable.errors, status: :unprocessable_entity}
      end
    end
  end


  def update
    respond_to do |format|
      if @sellable.update(sellable_params)
        format.html {redirect_to @sellable, notice: 'Sellable was successfully updated.'}
        format.json {render :show, status: :ok, location: @sellable}
      else
        format.html {render :edit}
        format.json {render json: @sellable.errors, status: :unprocessable_entity}
      end
    end
  end


  def destroy
    @sellable.destroy
    respond_to do |format|
      format.html {redirect_to sellables_url, notice: 'Sellable was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  def set_sellable
    @sellable = Sellable.find(params[:id])
  end


  def sellable_params
    params.require(:sellable).permit(:title, :address, :price, :description, :completed, :user_id, images: [])
  end
end
