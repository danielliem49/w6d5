# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cat.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('cats')

cats = Cat.create([
  { birth_date: '1945/08/08', color: 'Blue', name: 'Daniel', sex: 'M', description: 'one cool cat'}, 
  { birth_date: '2002/04/25', color:'Green', name: 'Andre', sex: 'M', description: 'hes a cat'}, 
  { birth_date: '1990/09/20', color:'Red', name: 'Chris', sex: 'F'}, 
  { birth_date: '1300/09/19', color:'Black', name: 'Paulo', sex: 'F'}, 
  { birth_date: '2020/02/10', color:'White', name: 'Mike', sex: 'F'}, 
])

