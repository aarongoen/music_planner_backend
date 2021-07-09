# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Day.destroy_all
Piece.destroy_all
# DaysPiece.destroy_all

days = Day.create([
    { name: "First Sunday of Advent", lectionary: "RCL", first_reading: "Zechariah (14:1-2); 14:3-9", psalm_or_canticle: "Psalm 50 or Psalm 50:1-6", second_reading: "1 Thessalonians 3:6-13", gospel: "Luke 21:25-33", date: "2021-11-28", date_pretty: "28. November 2021", year: "C"},
    { name: "Second Sunday of Advent", lectionary: "RCL", first_reading: "Baruch 5:1-9 or Malachi 3:1-4", psalm_or_canticle: "Luke 1:68-79", second_reading: "Philippians 1:3-11", gospel: "Luke 3:1-6", date: "2021-12-05", date_pretty: "5. December 2021", year: "C"},
    { name: "Third Sunday of Advent", lectionary: "RCL", first_reading: "Zephaniah 3:14-20", psalm_or_canticle: "Isaiah 12:2-6", second_reading: "Philippians 4:4-7", gospel: "Luke 3:7-18", date: "2021-12-12", date_pretty: "5. December 2021", year: "C"},
    { name: "Fourth Sunday of Advent", lectionary: "RCL", first_reading: "Micah 5:2-5a", psalm_or_canticle: "Luke 1:46b-55 or Psalm 80:1-7", second_reading: "Hebrews 10:5-10", gospel: "Luke 1:39-45 [46-55]", date: "2021-12-19", date_pretty: "19. December 2021", year: "C"}
    ])

pieces = Piece.create([
    { title: "Come, I pray Thee", composer: "Anderson", voicing: "SATB", publisher: "Leslie", day_id: Day.first.id},
    { title: "Zion hears the watchmen's voices", composer: "Bach/Rutter", voicing: "Unison", publisher: "Oxford University Press", collection: "Carols for Choirs 2", day_id: Day.first.id},
    { title: "And there will be signs", composer: "Bender", voicing: "Unison", publisher: "CPH", day_id: Day.first.id},

    { title: "When the Lord turned again", composer: "Batten", voicing: "SATB", publisher: "Oxford University Press", collection: "16th Century Anthem Book", day_id: Day.second.id},
    { title: "Comford, comfort ye my people", composer: "Bunjes", voicing: "SATB", publisher: "CPH", day_id: Day.second.id},
    { title: "Arise, Sons of the Kingdom", composer: "Buxtehude", voicing: "Unison", publisher: "CPH", collection: "The First Morning Star Choir Book", day_id: Day.second.id},

    { title: "Rejoice in the Lord alway", composer: "anonymous", voicing: "SATB", publisher: "Oxford University Press", collection: "16th Century Anthem Book", day_id: Day.third.id},
    { title: "Zion hears the watchmen's voices", composer: "Bach/Rutter", voicing: "Unison", publisher: "Oxford University Press", collection: "Carols for Choirs 2", day_id: Day.third.id},
    { title: "Lord, we beseech Thee", composer: "Batten", voicing: "SATB", publisher: "Oxford University Press", collection: "16th Century Anthem Book", day_id: Day.third.id},

    { title: "Lift up your heads", composer: "Amner", voicing: "SSATB", publisher: "Oxford University Press", collection: "16th Century Anthem Book", day_id: Day.fourth.id},       
    { title: "Ave Maria", composer: "Arcadelt", voicing: "SATB", publisher: "AE", day_id: Day.fourth.id},        
    { title: "The Angel Gabriel", composer: "Arnatt", voicing: "SATB", publisher: "APH", day_id: Day.fourth.id}       

])

# days_pieces = [
#     { day_id: 1, piece_id: 1 },
#     { day_id: 1, piece_id: 2 },
#     { day_id: 1, piece_id: 3 },
    
#     { day_id: 2, piece_id: 4 },
#     { day_id: 2, piece_id: 5 },
#     { day_id: 2, piece_id: 6 },

#     { day_id: 3, piece_id: 7 },
#     { day_id: 3, piece_id: 8 },
#     { day_id: 3, piece_id: 9 },

#     { day_id: 4, piece_id: 10 },
#     { day_id: 4, piece_id: 11 },
#     { day_id: 4, piece_id: 12 },
# ]

# days_pieces = Day.each.all do |day|
#     DaysPiece.create(day_id: day.id)
# end

# days_pieces = Piece.each.all do |piece|
#     DaysPiece.update(piece_id: piece.id)
# end

# days_pieces.each do |hash|
#     DaysPiece.find_or_create_by(hash)
# end

