# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "maxianna99",  password: "pass")
User.create(username: "confucius7",  password: "pass")
User.create(username: "Socrate",  password: "pass")
User.create(username: "Waso",  password: "pass")
User.create(username: "Monlaura",  password: "pass")

Message.create(body:"Hi, I'm first message", user: User.first)
Message.create(body:"Hi, I'm another pretty message", user: User.last)
Message.create(body:" I'm thrillingly good", user: User.find(4))
Message.create(body:"You should read me right now!", user: User.find(3))
Message.create(body:" Just another awesome message", user: User.first)
