# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# t.string   "title"
# t.date     "starts"
# t.date     "ends"
# t.text     "description"
# t.text     "address_1"
# t.text     "address_2"
# t.string   "city"
# t.string   "state"
# t.integer  "zip"
# t.integer  "lat"
# t.integer  "lon"
# t.datetime "created_at",  null: false
# t.datetime "updated_at",  null: false

Event.create(title: "test", description: "A test event", starts: "2015-11-29", ends: "2015-11-30")
