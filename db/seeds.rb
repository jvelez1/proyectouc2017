# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password',
             name: 'Admin', lastname:'One', ci:'21476435', position:'Estudiante',
             department: 'facyt',admin: true)

DbEngie.create!(name: 'Postgres', version: '9.3',
                documentation: 'http://www.postgresql.org.es/documentacion')

OperatingSystem.create!(name: 'Ubuntu', version: 'Yakkety Yak',
                       architecture: '64 bits')

Provaider.create!(name: 'Proveedor', type_name: 'Tipo 1', year: '2014')

Audit.create!(security_controls: 'AAA', documentation: 'google.com', version:'beta 0.1', interfaces_quantity: 2,
              db_engie_id: DbEngie.first.id, operating_system_id: OperatingSystem.first.id, provaider_id: Provaider.first.id )






