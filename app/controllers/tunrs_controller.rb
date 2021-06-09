class TunrsController < ApplicationController
  before_action :set_tunr, only: [:show, :update, :destroy]

  # GET /tunrs
  def index
    @tunrs = Tunr.all

    render json: @tunrs
  end

  # GET /tunrs/1
  def show
    render json: @tunr
  end

  # POST /tunrs
  def create
    @tunr = Tunr.new(tunr_params)

    if @tunr.save
      render json: @tunr, status: :created, location: @tunr
    else
      render json: @tunr.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tunrs/1
  def update
    if @tunr.update(tunr_params)
      render json: @tunr
    else
      render json: @tunr.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tunrs/1
  def destroy
    @tunr.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tunr
      @tunr = Tunr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tunr_params
      params.require(:tunr).permit(:title, :artis, :duration)
    end
end
