class Customer < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservationcs
  
  def full_name
    last_name + first_name
  end
  
end
