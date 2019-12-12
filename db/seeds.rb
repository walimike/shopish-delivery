# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 2,
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  admin: true
)
user.save!

Category.create!([{
    title: "Stationary",
    description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
    id: 2
},
{
    title: "Fashion",
    description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
    id: 3
},
{
    title: "Electronics",
    description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
    id: 4
}])

Product.create!([{
    name: 'Books',
    price: 2000,
    quantity: 30,
    category_id: 2
},
{
    name: 'Bag',
    price: 2000,
    quantity: 30,
    category_id: 3
},
{
    name: 'Laptop',
    price: 2000,
    quantity: 30,
    category_id: 4
},
{
    name: 'Clothes',
    price: 2000,
    quantity: 30,
    category_id: 3
}])