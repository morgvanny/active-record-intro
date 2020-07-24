Appointment.delete_all
Doctor.delete_all
DoctorContract.delete_all
Facility.delete_all
Insurance.delete_all
Medications.delete_all
Patient.delete_all
PatientContract.delete_all
Prescription.delete_all


Facility.create!(name:"Cool Place")
Facility.create!(name: "Another Place")

10.times do
  Doctor.create!(name: Faker::Name.name, specialty: Faker::Food.dish,
  facility: Facility.all.sample
  )
end

15.times do
  Patient.create!(name: Faker::Name.name, age: rand(0...100))
end

20.times do
  Appointment.create!(patient: Patient.all.sample,
    doctor: Doctor.all.sample, time: DateTime.now + rand(0...20),
  reason: Faker::TvShows::BreakingBad.episode)
end
