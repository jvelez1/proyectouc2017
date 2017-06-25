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

SwDevelopment.create!(name: 'Sistema gestion de datos', version: '1aa', documentation: 'www.google.com',
                      source_files: 'Files on C', executable_files: 'Files on D',
                      q_source_files: 18, q_executable_files: 19)

SwDevelopment.create!(name: 'Sistema gestion de documentos', version: '2aa', documentation: 'www.google.com',
                      source_files: 'Files on e', executable_files: 'Files on f',
                      q_source_files: 20, q_executable_files: 21)

SwDevelopment.create!(name: 'Sistema control de usuarios', version: '3aa', documentation: 'www.google.com',
                      source_files: 'Files on g', executable_files: 'Files on h',
                      q_source_files: 22, q_executable_files: 23)

a = Audit.find(1)
a.sw_developments << SwDevelopment.find(1)
a.sw_developments << SwDevelopment.find(2)








