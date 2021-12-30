progressbar = ProgressBar.create(
  title: 'Creating Locations',
  total: LOCATIONS_TO_CREATE
)

LOCATIONS_TO_CREATE.times do
  Location.create(name: Faker::Nation.capital_city)
  progressbar.increment
end
