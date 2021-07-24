class Admins::CustomersController < ApplicationController
 def index
  @coustomers = Customer.all
 end
end
