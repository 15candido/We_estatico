
User.create!(nome: "silva", email: "silva@estagio.com",
                      password:"model", password_confirmation: "model", admin: true)

99.times do |n|
  nome = Faker::Name.name
  email = "estagio-#{n+1}@htmail.org"
  password = "password"
  User.create!(nome: nome, email: email, password: password, password_confirmation: password)
end
