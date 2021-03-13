require 'net/http'
require 'json'
require 'uri'

# Rover Api class to handle requests
class RoverAPI

  # Defines the rover url and the api key to be used for requests
  def initialize
    @rover_url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/'
    @api_key = 'z6m0CSenQmOw96NVnKLGngUlr3kOPbN3ad2lBSpB'
  end

  # Receives rover name and hash of parameters, returns hash inside array
  def rover_images(roverName, **parameters)
    uri = URI("#{@rover_url}#{roverName}/photos.html")
    parameters[:api_key] = @api_key
    uri.query = URI.encode_www_form(parameters)
    response = Net::HTTP.get_response(uri)

    return [] unless response.is_a?(Net::HTTPSuccess) # if requests fails, returns empty array

    JSON.parse(response.body)['photos']
  end
end

=begin
Usage example:

get_api = RoverAPI.new
api_reply = get_api.rover_images('curiosity', { :sol => 103 })

puts JSON.pretty_generate(api_reply)

api_reply.each do |camera|
  puts camera['id'].to_s + ' image is: ' + camera['img_src'].to_s
end
=end