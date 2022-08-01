# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AddingProduct.create([
    {name: 'Cemento',
     description: 'cemento de calidad',
    unit: 'kg',
    price: 10,
    qnt: 5,
    image: 'test2.jpg'},
    
    {name: 'Pintura',
     description: 'pintura de color rojo de calidad',
    unit: 'galones',
    price: 25,
    qnt: 1,
    image: 'test3.jpg'},
])
