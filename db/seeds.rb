USERS_TO_CREATE = 20
LOCATIONS_TO_CREATE = 50
RECORDINGS_ON_EACH_LOCATION = 4

Dir[Rails.root.join('db/seeds/*.rb')].each do |file|
  require file
end
