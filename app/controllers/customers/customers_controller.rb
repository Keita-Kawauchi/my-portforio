class Customers::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.new
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "You have edited customer data successfully."
      redirect_to customer_customer_path(@customer)
    else
      render 'edit'
    end
  end

  private
  def customer_params
   params.require(:customer).permit(:is_deleted, :last_name, :first_name, :last_name_kana, :first_name_kana,:phone_number, :email, :password, :postcode, :address)
  end
end

