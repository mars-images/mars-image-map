# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'httparty'
require 'pp'

@options = { query: { site: '00000' }, timeout: 600 }

puts 'Sending request to nasa endpoint.  This will take a while.  Expecing a 13+ MB xml file'
# request endpoint
request = HTTParty.get('https://mars.jpl.nasa.gov/msl-raw-images/locations.xml', @options)

puts 'Recieved response'
# grab xml parsed data
response = request.parsed_response

puts 'Parsed response'
locations = response['msl']['location']
locations.each do |info|
  image = Image.new
  image.site = info['site'].to_i
  image.itemName = info['itemName']
  image.dateAdded = Date.parse(info['dateAdded'])
  image.arrivalTime = Date.parse(info['arrivalTime'])
  image.startSol = info['startSol'].to_i
  image.endSol = info['endSol'].to_i
  image.drive = info['drive'].to_i
  image.contributor = info['contributor']
  image.lon = info['lon'].to_f
  image.lat = info['lat'].to_f
  image.z = info['z'].to_f
  image.y = info['y'].to_f
  image.x = info['x'].to_f
  image.mapPixelH = info['mapPixelH'].to_f
  image.mapPixelV = info['mapPixelV'].to_f
  image.rot = info['rot']

  if image.save!
    puts "Saved image: #{image.itemName} to db"
  else
    puts "Error saving image: #{image.itemName}"
  end
end

puts '*******     All done    ********'
