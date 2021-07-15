class Cinema
  attr_accessor :name, :location
  def initialize(name, location)
      @name = name
      @location = location
      @movies = []
  end
  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

# add a new cinema using the 'Cinema' class
cobble_hill = Cinema.new("Cobble Hill Cinema", "Court St, Brooklyn")
# add a new movie using the 'Movie' class
spider_man = Movie.new("Spider-Man", "9:00")
# add the new movie to the new cinema
cobble_hill.add_movie(spider_man)

puts cobble_hill.movies