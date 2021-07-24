class Admins::ReservationcsController < ApplicationController

  def index
    @reservationcs = Reservationc.all
  end

  def new
    @reservationc = Reservationc.new
  end

   private

  def set_reservationc
    @Reservationc = Reservationc.find(params[:id])
  end
end
