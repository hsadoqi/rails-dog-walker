# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
Dog.destroy_all

bob = Owner.create(name: "Bob", age: 21)
joe = Owner.create(name: "Joe", age: 22)
susan = Owner.create(name: "Susan", age: 52)
Owner.create(name: "John", age:74)
Owner.create(name: "Leroy", age: 55)

Dog.create(name: "Bobby", owner: bob)
Dog.create(name: "Joey", owner: joe)
Dog.create(name: "Susie", owner: susan)
