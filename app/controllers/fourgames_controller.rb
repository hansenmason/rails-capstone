class FourgamesController < ApplicationController
  before_action :set_fourgame, only: [:show, :update, :destroy]

  # GET /fourgames
  def index
    @fourgames = Fourgame.all

    render json: @fourgames
  end

  # GET /fourgames/1
  def show
    render json: @fourgame
  end

  # POST /fourgames
  def create
    @fourgame = Fourgame.new(fourgame_params)

    if @fourgame.save
      render json: @fourgame, status: :created, location: @fourgame
    else
      render json: @fourgame.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fourgames/1
  def update
    if @fourgame.update(fourgame_params)
      render json: @fourgame
    else
      render json: @fourgame.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fourgames/1
  def destroy
    @fourgame.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourgame
      @fourgame = Fourgame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fourgame_params
      params.require(:fourgame).permit(:pico, :fumi, :bagel, :number)
    end
end
