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

# Flatiron School area
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

# Times Square area
Location.create([
  {lonlat: "POINT(-73.9885 40.7600)"},
  {lonlat: "POINT(-73.9866 40.7576)"},
  {lonlat: "POINT(-73.9862 40.7583)"},
  {lonlat: "POINT(-73.9831 40.7585)"},
  {lonlat: "POINT(-73.9834 40.7603)"},
  {lonlat: "POINT(-73.9862 40.7615)"},
  {lonlat: "POINT(-73.9848 40.7626)"},
  {lonlat: "POINT(-73.9847 40.7576)"},
  {lonlat: "POINT(-73.9846 40.7600)"},
  {lonlat: "POINT(-73.9857 40.7605)"},
  {lonlat: "POINT(-73.9854 40.7571)"},
  {lonlat: "POINT(-73.9848 40.7560)"}
])

# Astoria area
Location.create([
  {lonlat: "POINT(-73.9265 40.7634)"},
  {lonlat: "POINT(-73.9273 40.7645)"},
  {lonlat: "POINT(-73.9250 40.7653)"},
  {lonlat: "POINT(-73.9251 40.7637)"},
  {lonlat: "POINT(-73.9256 40.7631)"},
  {lonlat: "POINT(-73.9247 40.7649)"},
  {lonlat: "POINT(-73.9282 40.7638)"} 
])



Reservation.create(user_id: 1, location_id: 1)
Reservation.create(user_id: 1, location_id: 2)
Reservation.create(user_id: 1, location_id: 3)
Reservation.create(user_id: 1, location_id: 4)

p "Created #{Location.count} locations with username #{User.first.email}"
