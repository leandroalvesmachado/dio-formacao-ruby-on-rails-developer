# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

20.times do |i|
  nome = "Cliente #{i+1}"
  telefone = Faker::PhoneNumber.cell_phone
  cpf = Faker::IdNumber.unique.brazilian_citizen_number

  Cliente.create(nome: nome, telefone: telefone, cpf: cpf) if Cliente.where(cpf: cpf).count.zero?
end

Administrador.create(nome: 'Leandro', email: 'leandro@gmail.com', senha: '123456', perfil: 'ADM')
Administrador.create(nome: 'Editor', email: 'editor@gmail.com', senha: '123456', perfil: 'Editor')