require 'faker'

#####################################################

    ### back_to_0 ###   
Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Appointment.destroy_all
Specialty.destroy_all

#####################################################
    ### 50_creation_for_each_model ###

specialties_array = ["Dentiste", "Chirurgien", "Vétérinaire", "Généraliste", "Cardiologue", "Pharmacien", "Dermatologue", "Ophtalmologue"]

50.times do

    doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)

    patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

    city = City.create(name: Faker::Address.city)

    appointment = Appointment.create(date: Faker::Date.forward, doctor: Doctor.all.sample ,patient: Patient.all.sample)

    specialty = Specialty.create(name: specialties_array.sample)

end
