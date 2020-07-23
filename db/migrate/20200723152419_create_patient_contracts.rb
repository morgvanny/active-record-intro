class CreatePatientContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_contracts do |t|
      t.integer :insurance_id
      t.integer :patient_id
    end
  end
end
