class Customers::ReservationcsController < ApplicationController
  before_action :set_reservationc, only: %i[ show edit update destroy ]


  # GET /reservationcs or /reservationcs.json
  def index
    @reservationcs = Reservationc.all
  end

  # GET /reservationcs/1 or /reservationcs/1.json
  def show
  end

  # GET /reservationcs/new
  def new
    @reservationc = Reservationc.new
  end

  # GET /reservationcs/1/edit
  def edit
   @reservationc = Reservationc.find(params[:id])
  end

  def confirm
    @reservationc = Reservationc.new(reservationc_params)

    #redirect_to customers_reservationcs_verification_path
  end
  # POST /reservationcs or /reservationcs.json
  def create
    @reservationc = Reservationc.new(reservationc_params)
    @reservationc.save

    respond_to do |format|
      if @reservationc.save
        format.html { redirect_to (@reservationc.id), notice: "Reservationc was successfully created." }
        format.json { render :show, status: :created, location: @reservationc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservationc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservationcs/1 or /reservationcs/1.json
  def update
    respond_to do |format|
      if @reservationc.update(reservationc_params)
        format.html { redirect_to @reservationc, notice: "Reservationc was successfully updated." }
        format.json { render :show, status: :ok, location: @reservationc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservationc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservationcs/1 or /reservationcs/1.json
  def destroy
    @reservationc.destroy
    respond_to do |format|
      format.html { redirect_to reservationcs_url, notice: "Reservationc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    before_action
    def set_reservationc
      @reservationc = Reservationc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservationc_params
      params.require(:reservationc).permit(:name, :start_time, :end_time, :number_of_people)
    end
end