class Facility < ActiveRecord::Base
  has_many :doctors
  has_many :insurances, through: doctors
end
