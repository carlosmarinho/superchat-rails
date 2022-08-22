# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'jomar@email.com', password: '123456', name: 'Jomar', username: "jomar", birthday: "05/05/1990", superadmin_role: true)
User.create!(email: 'carlos@hotmail.com', password: '123456', name: 'Carlos Luiz', username: "carlosm", birthday: "24/02/1990", superadmin_role: true)
User.create!(email: 'eloah@gmail.com', password: '123456', name: 'Eloah Silva', username: "carlosm", birthday: "17/10/1986")
User.create!(email: 'cadu@gmail.com', password: '123456', name: 'Cadu Silva', username: "cadu", birthday: "18/12/2000")
User.create!(email: 'juca@gmail.com', password: '123456', name: 'Carlos Silva Pai', username: "juca", birthday: "18/02/1960")
User.create!(email: 'marli@gmail.com', password: '123456', name: 'Marli França', username: "marli", birthday: "12/12/1960")
User.create!(email: 'sueli@gmail.com', password: '123456', name: 'Sueli da Costa Silva', username: "sueli", birthday: "10/04/1956")