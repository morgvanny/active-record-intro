class Medications < ActiveRecord::Base
  has_many :prescriptions
end
