# This file should contain all the record creation needed to seed the database with its default amounts.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user =
  User.find_or_create_by!(email: "admin@example.com") { |u|
    u.password = "password"
    u.password_confirmation = "password"
    u.admin = true
  }

if Lender.none?
  3.times { Lender.create!(name: Faker::Name.name) }
  10.times do
    Loan.create!(borrower: user, lender: Lender.all.sample, amount: rand(1000..10_000) / 100.0, purpose: Faker::Lorem.sentence, due_date: Faker::Date.forward(days: 365))
  end
end
