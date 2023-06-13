# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.application.credentials.admin
	User.create(
	  email: Rails.application.credentials.admin[:username],
	  name: "Administrador",
	  password: Rails.application.credentials.admin[:password],
	  password_confirmation: Rails.application.credentials.admin[:password],
	  role: 1
	)
end
