class PositionsController < ApplicationController
  before_action :get_portfolio
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  # GET /positions
  # GET /positions.json
  def index
    @positions = @portfolio.positions
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
  end

  # GET /positions/new
  def new
    @position = @portfolio.positions.build
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions
  # POST /positions.json
  def create
    @position = @portfolio.positions.build(position_params)

    respond_to do |format|
      if @position.save
        format.html { redirect_to portfolio_positions_path(@portfolio), notice: 'Position was successfully created.' }
        format.json { render :show, status: :created, location: @position }
      else
        format.html { render :new }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positions/1
  # PATCH/PUT /positions/1.json
  def update
    respond_to do |format|
      if @position.update(position_params)
        format.html { redirect_to portfolio_position_path(@portfolio), notice: 'Position was successfully updated.' }
        format.json { render :show, status: :ok, location: @position }
      else
        format.html { render :edit }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1
  # DELETE /positions/1.json
  def destroy
    @position.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_positions_path(@portfolio), notice: 'Position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_portfolio
      @portfolio = Portfolio.find(params[:portfolio_id])
    end

    def set_position
      @position = @portfolio.positions.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def position_params
      params.require(:position).permit(:open_date, :close_date, :cost, :quantity, :notes, :status, :portfolio_id, :stock_id)
    end
end
