# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.find_or_create_by(username: 'mun', location: 'new york', email: 'jebhenrie@gmail.com')
record1 = Record.create(record_label: 'Atlantic', title: 'Respect', artist: 'Aretha Franklin', user_id: 1)
Record.create(record_label: 'Atlantic', title: 'Zepplin 3', artist: 'Led Zepplin', user_id: 1)
Record.create(record_label: 'Atlantic', title: 'Cream', artist: 'Cream', user_id: 1)




