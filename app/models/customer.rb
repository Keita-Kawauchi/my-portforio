class Customer < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservationcs

  def full_name
     if self.last_name.present? || self.first_name.present?
      self.last_name + self.first_name
     end
  end
end
