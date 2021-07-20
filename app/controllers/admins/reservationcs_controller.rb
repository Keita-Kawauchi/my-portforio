class Admins::ReservationcsController < ApplicationController
  before_action :if_not_admin

  def new
    @reservationc = Reservationc.new
  end

   private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_reservationc
    @restaurant = Reservationc.find(params[:id])
  end
end
