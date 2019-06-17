# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserEvent.destroy_all
Event.destroy_all

spike = Event.create(sport:"Spikeball", time: DateTime.parse("15th Jun 2019 18:00:00"), skill_level: "Advanced", latitude: 39.702031, longitude: -104.971130)
soccer = Event.create(sport:"Soccer", time: DateTime.parse("14th Jun 2019 14:00:00"), skill_level: "Beginner", latitude: 39.734174, longitude: -104.966106)
soccer = Event.create(sport:"Soccer", time: DateTime.parse("18th Jun 2019 18:00:00"), skill_level: "Advanced", latitude: 39.745726, longitude: -104.956894)
