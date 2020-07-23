class Insurance < ActiveRecord::Base
  has_many :doctor_contracts
  has_many :patient_contracts
end
