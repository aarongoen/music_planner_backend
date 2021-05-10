# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
days = Day.create([
    { name: "First Sunday of Advent", lectionary: "RCL", first_reading: "Zechariah (14:1-2); 14:3-9", psalm: "Psalm 50 or Psalm 50:1-6", second_reading: "1 Thessalonians 3:6-13", gospel: "Luke 21:25-33", date: "2021-11-28", date_pretty: "28. November 2021"}
    ])