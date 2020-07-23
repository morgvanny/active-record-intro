class PatientContract < ActiveRecord::Base
  belongs_to :patient
  belongs_to :insurance
end
