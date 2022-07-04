# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u = User.create! nickname: "kdiegoxc", role: "admin", password: "diego123", email: "diego@guilef.cl"
User.create! nickname: "erick", role: "user", password: "erick123", email: "erick@kunz.cl"

p1 = Permission.create! name: "delete"
p2 = Permission.create! name: "update"
p3 = Permission.create! name: "show"
p4 = Permission.create! name: "PUT"
p5 = Permission.create! name: "PATCH"

UserPermission.create! permission: p1, user: u
UserPermission.create! permission: p2, user: u
UserPermission.create! permission: p3, user: u
UserPermission.create! permission: p4, user: u
UserPermission.create! permission: p5, user: u

Power.create! name: "Bola de fuego", damage_points: 150, description: "Dispara una bola de fuego al enemigo", element: "fire"
Power.create! name: "Oleada", damage_points: 140, description: "Genera una ola de agua", element: "water"
Power.create! name: "Tornado", damage_points: 180, description: "Genera un tornado", element: "wind"
Power.create! name: "Relampago", damage_points: 170, description: "Laza un trueno", element: "thunder"

Skill.create! name: "", damage_points: 150, description: "", element: ""
Skill.create! name: "", damage_points: 140, description: "", element: ""
Skill.create! name: "", damage_points: 180, description: "", element: ""
Skill.create! name: "", damage_points: 170, description: "", element: ""