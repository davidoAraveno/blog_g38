# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Article.destroy_all
User.create(
    [
        {
            name: 'john do',
            password: "john do"
        },
        {
            name: 'pepe',
            password: "pepe"
        }
    ]
)

User.find_by(name: 'john do').update(admin: true)

Article.create(
    [
        {
            title: 'fish',
            image: 'https://image.shutterstock.com/image-photo/salmon-fish-isolated-on-white-260nw-519502657.jpg',
            content: 'yo era un pez'
        },
        {
            title: 'dog',
            image: 'https://www.fanaticosdelasmascotas.cl/wp-content/uploads/2020/05/portrait-of-a-dog-257540-1-1.jpg',
            content: 'creo que soy un perro'
        }
    ]
)