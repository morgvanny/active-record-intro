class Facility < ActiveRecord::Base
  has_many :doctors
  has_many :insurances, through: :doctors
  has_many :patients, through: :doctors
end
