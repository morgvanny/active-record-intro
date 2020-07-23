class CreateDoctorContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_contracts do |t|
      t.integer :doctor_id
      t.integer :insurance_id
    end
  end
end
