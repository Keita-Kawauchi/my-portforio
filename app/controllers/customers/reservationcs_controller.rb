class Customers::ReservationcsController < ApplicationController
  before_action :set_reservationc, only: %i[ show edit update destroy ]
 
  def index
    @reservationcs = Reservationc.where(course_id: params[:course_id])
  end

  def show
  end

  def new
    @reservationc = Reservationc.new
    @reservationc.course_id = params[:course_id].to_i
  end

  def edit
   @reservationc = Reservationc.find(params[:id])
  end

  def confirm
      logger.debug("===")
    @reservationc = Reservationc.new(reservationc_params)
   logger.debug(@reservationc.attributes)
  end

  def create
    @reservationc = Reservationc.new(reservationc_params)
    @reservationc.customer_id = current_customer.id
    @reservationc.save!
    redirect_to customers_reservationcs_thanx_path
  end

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

  def destroy
    @reservationc.destroy
    respond_to do |format|
      format.html { redirect_to reservationcs_url, notice: "Reservationc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def thanx
  end

  private

    before_action
    def set_reservationc
      @reservationc = Reservationc.new
    end

    def reservationc_params
      params.require(:reservationc).permit(:course_id, :name, :start_time, :end_time, :number_of_people, :total_price)
    end
end