# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  AdminUser.create!(full_name: "kirubel", email: "test@gmail.com", password: "password", password_confirmation: "password")
end

if Rails.env.production?
  AdminUser.create!(full_name: Rails.application.credentials.production[:full_name].to_s, email: Rails.application.credentials.production[:admin_email].to_s,
                    password: Rails.application.credentials.production[:seed_password].to_s, password_confirmation: Rails.application.credentials.production[:seed_password].to_s)

  CompanyInformation.create!(campany_name: "Nebidom tour and travel")
end