class Patient < ActiveRecord::Base
  has_many :patients
  has_many :doctors, through: :appointments
  has_many :prescriptions
  has_many :medications, through: :prescriptions
end
