class DoctorContract < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :insurance
end
