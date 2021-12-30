progressbar = ProgressBar.create(
  title: 'Creating Recordings',
  total: Location.count * RECORDINGS_ON_EACH_LOCATION
)

RECORDING_STATUSES = %w[sunny cloudy rainy].freeze
TEMPERATURES = (20..40).to_a

Location.all.each do |location|
  RECORDINGS_ON_EACH_LOCATION.times do
    location.recordings.create(temp: TEMPERATURES.sample,
                               status: RECORDING_STATUSES.sample)
    progressbar.increment
  end
end
