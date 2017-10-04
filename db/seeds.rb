require "csv"

puts 'Cleaning database...'
House.destroy_all

puts 'Creating houses...'

CSV.foreach("db/gites.csv", :encoding => 'windows-1251:utf-8') do |row|

  gite = House.create(name: row[0], epis: row[1], description: row[2])
  p "--- #{gite.name}"
end

puts 'Finished!'
