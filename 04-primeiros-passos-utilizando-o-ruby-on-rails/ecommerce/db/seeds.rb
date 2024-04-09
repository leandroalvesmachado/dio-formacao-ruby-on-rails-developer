# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Carro.create(nome: 'Carro 1', modelo: 'Modelo 1', ano: 1991) if Carro.where(nome: 'Carro 1').count.zero?
Carro.create(nome: 'Carro 2', modelo: 'Modelo 2', ano: 1992) if Carro.where(nome: 'Carro 2').count.zero?
Carro.create(nome: 'Carro 3', modelo: 'Modelo 3', ano: 1993) if Carro.where(nome: 'Carro 3').count.zero?
Carro.create(nome: 'Carro 4', modelo: 'Modelo 4', ano: 1994) if Carro.where(nome: 'Carro 4').count.zero?
Carro.create(nome: 'Carro 5', modelo: 'Modelo 5', ano: 1995) if Carro.where(nome: 'Carro 5').count.zero?
Carro.create(nome: 'Carro 6', modelo: 'Modelo 6', ano: 1996) if Carro.where(nome: 'Carro 6').count.zero?
