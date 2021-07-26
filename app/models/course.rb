class Course < ApplicationRecord
   attachment :image
   has_many :reservationcs
end
