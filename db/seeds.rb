# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserEvent.destroy_all
Event.destroy_all

spike = Event.create(sport:"Spikeball", date:"June 5, 2019", time:16, skill_level: "Advanced", location: "Wash Park", latitude: 39.702031, longitude: -104.971130)
soccer = Event.create(sport:"Soccer", date:"June 8, 2019", time:14, skill_level: "Beginner", location: "Cheeseman Park", latitude: 39.734174, longitude: -104.966106)
soccer = Event.create(sport:"Soccer", date:"July 12, 2019", time:14, skill_level: "Advanced", location: "City Park", latitude: 39.745726, longitude: -104.956894)
