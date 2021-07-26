class Admins::ReservationcsController < ApplicationController

  def index
    @reservationcs = Reservationc.all
  end

  def new
    @reservationc = Reservationc.new
    @reservationc.course_id = params[:course_id]
  end

   private

  def set_reservationc
    @Reservationc = Reservationc.find(params[:id])
  end

  def reservationc_params
   params.require(:reservationc).permit(:name, :price, :introduction, :image)
  end
end
