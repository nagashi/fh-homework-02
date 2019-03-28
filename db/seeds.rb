# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ruby encoding: utf-8

genre_type = [
  ["Fantasy", "FICTION"],
  ["Narrative Non Fiction", "NON FICTION"],
  ["Science Fiction", "FICTION"],
  ["Historical Fiction", "FICTION"],
  ["Realistic Fiction", "FICTION"],
  ["Biography", "NON FICTION"],
  ["Technology", "NON FICTION"],
  ["Fan Fiction", "FICTION"],
  ["Crimes", "NON FICTION"],
  ["Reference Book", "NON FICTION"],
  ["Mystery", "FICTION"],
  ["Self-Help", "NON FICTION"],
  ["Suspense/Thriller", "FICTION"],
  ["Horror", "FICTION"],
  ["Textbook", "NON FICTION"],
  ["Humor", "FICTION"], 
  ["Periodicals", "NON FICTION"],
  ["Speech", "NON FICTION"],
  ["Classic", "FICTION"],
  ["Satire", "FICTION"],
  ["Comic/Graphic", "FICTION"],
  ["Magical Realism", "FICTION"],
  ["Remance", "FICTION"],
  ["Essay", "NON FICTION"],
  ["Memoir", "NON FICTION"],
  ["Drama", "FICTION"],
  ["Anthology", "FICTION"],
  ["Fable", "FICTION"],
  ["Short Story", "FICTION"],
  ["Fairy Tale", "FICTION"],
  ["Biography", "NON FICTION"],
  ["Short Story", "FICTION"],
  ["Legend", "FICTION"],
  ["Mythology", "FICTION"],
  ["True Crime", "NON FICTION"]
]

genre_type = (genre_type * 2)

Book.destroy_all

genre_type.each do |genres, types| 
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.unique.author,
    genre: genres,
    publisher: Faker::Book.publisher,
    types: types,
    year: Faker::Number.unique.within(1900..2019),
    isbn: Faker::Number.unique.between(2047483647 , 2147483647)
    )
end

puts "Created #{Book.count} books"
