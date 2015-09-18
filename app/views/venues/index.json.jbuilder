json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :capacity, :all_ages
  json.url venue_url(venue, format: :json)
end
