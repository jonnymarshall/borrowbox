require 'json'

path = "pinned-places.json"
data_serialized = open(path).read
data = JSON.parse(data_serialized)

coordinates = []

data["features"].each do |feature|
  coordinates << feature["geometry"]["coordinates"]
end

p coordinates.length
