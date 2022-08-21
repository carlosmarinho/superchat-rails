# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'jomar@email.com', password: '123456', name: 'Jomar', username: "jomar", birthday: "05/05/1990")
User.create!(email: 'carlos@hotmail.com', password: '123456', name: 'Carlos Luiz', username: "carlosm", birthday: "24/02/1990")
