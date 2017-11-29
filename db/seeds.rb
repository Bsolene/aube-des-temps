require "csv"

puts 'Cleaning database...'
House.destroy_all

puts 'Creating houses...'

CSV.foreach("db/gites.csv", :encoding => 'windows-1251:utf-8') do |row|

  gite = House.create(name: row[0], epis: row[1], description: row[2])
  p "--- #{gite.name}"
end

puts "Adding photos..."
  # bouteillan = House.find(name: "La Bouteillan")
  # bouteillan.photo_urls = urls_bouteillan
  # lucque = House.find(name: "La Lucque")
  # lucque.photo_urls = urls_lucque

puts 'Finished!'


urls_bouteillan = [
  "http://res.cloudinary.com/bsolene/image/upload/v1510486575/Bouteillan_1.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486413/Bouteillan_2.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486370/Bouteillan_3.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486417/Bouteillan_4.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486576/Bouteillan_5.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486499/Bouteillan_6.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486458/Bouteillan_7.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486468/Bouteillan_8.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486467/Bouteillan_9.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486508/Bouteillan_10.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486575/Bouteillan_11.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486540/Bouteillan_12.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486574/Bouteillan_13.jpg",
  "http://res.cloudinary.com/bsolene/image/upload/v1510486590/Bouteillan_14.jpg",
]

urls_lucque = [

]
