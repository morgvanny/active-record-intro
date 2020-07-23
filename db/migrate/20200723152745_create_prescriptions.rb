class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.integer :medication_id
    end
  end
end
