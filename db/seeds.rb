# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
User.destroy_all
Reservation.destroy_all

User.create({first_name: "James", last_name: "Rhee", email: "james.rhee@flatironschool.com", password: "1"})

Location.create([
  {lonlat: "POINT(-74.0147 40.7053)"},
  {lonlat: "POINT(-74.0120 40.7050)"},
  {lonlat: "POINT(-74.0140 40.7036)"},
  {lonlat: "POINT(-74.0148 40.7050)"},
  {lonlat: "POINT(-74.0139 40.7064)"},
  {lonlat: "POINT(-74.0152 40.7061)"},
  {lonlat: "POINT(-74.0129 40.7050)"},
  {lonlat: "POINT(-74.0125 40.7066)"},
  {lonlat: "POINT(-74.0121 40.7072)"},
  {lonlat: "POINT(-74.0140 40.7031)"},
  {lonlat: "POINT(-74.0127 40.7023)"},
  {lonlat: "POINT(-74.0130 40.7028)"}
])

Reservation.create(user_id: 1, location_id: 1)
Reservation.create(user_id: 1, location_id: 2)
Reservation.create(user_id: 1, location_id: 3)
Reservation.create(user_id: 1, location_id: 4)

p "Created #{Location.count} locations with username #{User.first.email}"
