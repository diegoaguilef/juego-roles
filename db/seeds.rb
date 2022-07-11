# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u = User.create! nickname: "kdiegoxc", role: "admin", password: "diego123", email: "diego@aguilef.cl"
u1 = User.create! nickname: "erick", role: "user", password: "erick123", email: "erick@kunz.cl"
gm = User.create! nickname: "Game Master", role: "gm", password: "admin123", email: "gm@juego.cl"

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

r1 = Race.create! name: "Elfo", description: "Tipos con orjas largas"
r2 = Race.create! name: "Orco", description: "Tipos grandes y verdes"

alive = Status.create name: "alive"
dead = Status.create name: "dead"

ch1 = Character.create! name:"Luis123", level: 512, life_points: 1000, mana: 1100, race: r1, user: u1, status_id: alive.id
ch2 = Character.create! name:"jedy1234", level: 612, life_points: 1000, mana: 1100, race: r2, user: u1, status_id: alive.id

pw1 = Power.create! name: "Bola de fuego", damage_points: 150, description: "Dispara una bola de fuego al enemigo", element: "fire", race: r1
pw2 = Power.create! name: "Oleada", damage_points: 140, description: "Genera una ola de agua", element: "water", race: r1
pw3 = Power.create! name: "Tornado", damage_points: 180, description: "Genera un tornado", element: "wind", race: r1
pw4 = Power.create! name: "Relampago", damage_points: 170, description: "Laza un trueno", element: "thunder", race: r1

sk1 = Skill.create! name: "Espada", damage_points: 80, description: "Blande una espada", category: "sword", race: r1
sk2 = Skill.create! name: "Arco", damage_points: 80, description: "Dispara flechas", category: "bow", race: r1
sk3 = Skill.create! name: "Mazo", damage_points: 90, description: "Blande un gran mazo", category: "mallet", race: r1
sk4 = Skill.create! name: "Manoplas", damage_points: 65, description: "Pelea cuerpo a cuerpo con las manoplas", category: "mittens", race: r1
sk5 = Skill.create! name: "Correr", damage_points: 80, description: "Corre rapido", category: "runner", race: r1
sk6 = Skill.create! name: "Sigilo", damage_points: 80, description: "Es indetectable", category: "stealth", race: r1
sk7 = Skill.create! name: "Robo", damage_points: 90, description: "Arrebata objetos al enemigo", category: "stole", race: r1
sk8 = Skill.create! name: "Rastreo", damage_points: 65, description: "Rastrea al enemigo", category: "tracking", race: r1

pw5 = Power.create! name: "Bola de fuego", damage_points: 150, description: "Dispara una bola de fuego al enemigo", element: "fire", race: r2
pw6 = Power.create! name: "Tierra", damage_points: 140, description: "Crea muros de tierra", element: "earth", race: r2
pw7 = Power.create! name: "Tornado", damage_points: 180, description: "Genera un tornado", element: "wind", race: r2
pw8 = Power.create! name: "Relampago", damage_points: 170, description: "Laza un trueno", element: "thunder", race: r2

sk9 = Skill.create! name: "Espada", damage_points: 80, description: "Blande una espada", category: "sword", race: r2
sk10 = Skill.create! name: "Arco", damage_points: 80, description: "Dispara flechas", category: "bow", race: r2
sk11 = Skill.create! name: "Mazo", damage_points: 90, description: "Blande un gran mazo", category: "mallet", race: r2
sk12 = Skill.create! name: "Manoplas", damage_points: 65, description: "Pelea cuerpo a cuerpo con las manoplas", category: "mittens", race: r2
sk13 = Skill.create! name: "Correr", damage_points: 80, description: "Corre rapido", category: "runner", race: r2
sk14 = Skill.create! name: "Sigilo", damage_points: 80, description: "Es indetectable", category: "stealth", race: r2
sk15 = Skill.create! name: "Robo", damage_points: 90, description: "Arrebata objetos al enemigo", category: "stole", race: r2
sk16 = Skill.create! name: "Rastreo", damage_points: 65, description: "Rastrea al enemigo", category: "tracking", race: r2

ep1 = Equipment.create! name: "Casco", description: "Proteje la cabeza", position: "head"
ep2 = Equipment.create! name: "Guantes", description: "Proteje las manos", position: "hands"
ep3 = Equipment.create! name: "Pechera", description: "Proteje el torzo", position: "crooked"
ep4 = Equipment.create! name: "Pantalon", description: "Proteje las piernas", position: "legs"
ep5 = Equipment.create! name: "Espeda", description: "Arma pata cortar al enemigo", position: "weapon slot one"
ep6 = Equipment.create! name: "Escudo", description: "Proteje de impactos del enemigo", position: "weapon slot two"
ep7 = Equipment.create! name: "Anillo", description: "Artefacto magico", position: "artifact slot one"
ep8 = Equipment.create! name: "Pocion mana", description: "Pocion para restaurar el mana", position: "artifact slot two"

ep9 = Equipment.create! name: "Casco", description: "Proteje la cabeza", position: "head"
ep10 = Equipment.create! name: "Guantes", description: "Proteje las manos", position: "hands"
ep11 = Equipment.create! name: "Pechera", description: "Proteje el torzo", position: "crooked"
ep12 = Equipment.create! name: "Pantalon", description: "Proteje las piernas", position: "legs"
ep13 = Equipment.create! name: "Espeda", description: "Arma pata cortar al enemigo", position: "weapon slot one"
ep14 = Equipment.create! name: "Escudo", description: "Proteje de impactos del enemigo", position: "weapon slot two"
ep15 = Equipment.create! name: "Anillo", description: "Artefacto magico", position: "artifact slot one"
ep16 = Equipment.create! name: "Pocion mana", description: "Pocion para restaurar el mana", position: "artifact slot two"

# Configura el personaje 1
Configuration.create! summary: "Agrega un poder", user: ch1.user, character_id: ch1.id, configurable: pw1
Configuration.create! summary: "Agrega un poder", user: ch1.user, character_id: ch1.id, configurable: pw2
Configuration.create! summary: "Agrega un poder", user: ch1.user, character_id: ch1.id, configurable: pw3
Configuration.create! summary: "Agrega un poder", user: ch1.user, character_id: ch1.id, configurable: pw4

Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk1
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk2
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk3
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk4
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk5
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk6
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk7
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch1.id, configurable: sk8

Configuration.create! summary: "Añade un equipamiento", user: u1, character_id: ch1.id, configurable: ep1
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep2
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep3
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep4
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep5
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep6
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep7
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch1.id, configurable: ep8

# Configura el personaje 2
Configuration.create! summary: "Agrega un poder", user: u1, character_id: ch2.id, configurable: pw5
Configuration.create! summary: "Agrega un poder", user: u1, character_id: ch2.id, configurable: pw6
Configuration.create! summary: "Agrega un poder", user: u1, character_id: ch2.id, configurable: pw7
Configuration.create! summary: "Agrega un poder", user: u1, character_id: ch2.id, configurable: pw8

Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk9
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk10
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk11
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk12
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk13
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk14
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk15
Configuration.create! summary: "Agrega una habilidad", user: u1, character_id: ch2.id, configurable: sk16

Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep9
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep10
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep11
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep12
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep13
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep14
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep15
Configuration.create! summary: "Añade un epuipamiento", user: u1, character_id: ch2.id, configurable: ep16