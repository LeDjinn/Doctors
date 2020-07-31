# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
Doctoo.destroy_all
Patient.destroy_all
Appointement.destroy_all
Speciality.destroy_all


10.times do 
    city = City.create!(name: Faker::Address.city)
end

10.times do 
    doctoo = Doctoo.create!( first_name: Faker::Games::Heroes.name , last_name: Faker::Games::Pokemon.name , sip_code_string: Faker::Address.zip_code)
end

Speciality.create!(special: "Généraliste")
Speciality.create!(special: "Dermato")
Speciality.create!(special: "Urologue")
Speciality.create!(special: "ORL")
Speciality.create!(special: "Marabout")

10.times do
    patient = Patient.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      )
    end

10.times do
    appointement = Appointement.create!(
      doctoo: Doctoo.all.sample,
      patient: Patient.all.sample,
      doctoo_id: Doctoo.all.sample.id,
      patient_id: Patient.all.sample.id,
      date: Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today),
      )
    end