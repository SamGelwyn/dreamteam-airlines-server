require 'pry'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => "Joel Turnbull", :email => "joel@ga.co", :password => "chicken"
u2 = User.create :name => "Sam Gelwyn", :email => "sam@ga.co", :password => "chicken"
puts "#{ User.count } users created."

Flight.destroy_all
f1 = Flight.create :number => 13, :origin => 'Sydney', :destination => 'Perth', :date => "2021/05//12"
f2 = Flight.create :number => 182, :origin => 'Brisbane', :destination => 'Melbourne', :date => "2021/05/19"
puts "#{ Flight.count } flights created."

Plane.destroy_all
p1 = Plane.create :name => "Boeing 737", :rows => 100, :columns => 6
p2 = Plane.create :name => "Airbus A320", :rows => 110, :columns => 6
puts "#{ Plane.count } planes created."

Reservation.destroy_all
r1 = Reservation.create :seat => "1A"
r2 = Reservation.create :seat => "3D"
puts "#{ Reservation.count } reservations created."

#Associations

puts "Flights and Planes"
p1.flights << f1
p2.flights << f2

puts "Reservations and Flights"
f1.reservations << r1
f2.reservations << r2

puts "Reservations and Users"
u1.reservations << r1
u2.reservations << r2
