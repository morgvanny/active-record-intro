class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, -> { distinct }, through: :appointments
  has_many :prescriptions
  belongs_to :facility
  has_many :issued_prescriptions, class_name: "Prescription"
end
