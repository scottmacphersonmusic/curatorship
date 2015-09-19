Concert.create(
  concert_date: Time.now + 10.days,
  artist: Artist.create(
    name: 'Chris Potter',
    genre: 'Jazz',
    draw: 300),
  venue: Venue.create(
    name: 'Tractor Tavern',
    capacity: 500,
    all_ages: false
  )
)

Concert.create(
  concert_date: Time.now + 15.days,
  artist: Artist.create(
    name: 'Michael Jackson',
    genre: 'Pop',
    draw: 4_000),
  venue: Venue.create(
    name: 'Crocodile',
    capacity: 300,
    all_ages: false
  )
)

Concert.create(
  concert_date: Time.now + 20.days,
  artist: Artist.create(
    name: 'Kenny G',
    genre: 'Smooth Jazz',
    draw: 1),
  venue: Venue.create(
    name: 'Vera Project',
    capacity: 200,
    all_ages: true
  )
)
