# !!! I SWEAR I KNOW HOW TO CODE I JUST GET HUNG UP ON 1 STUPID THING
# WHEN I CAN'T LOOK AT MY NOTES.

class Viewer
  attr_accessor :first_name, :last_name

  ALL = []

  def full_name
    "#{first_name} #{last_name}"
  end

  def initialize(first_name, last_name) #
    self.first_name = first_name
    self.last_name = last_name
    ALL << self
  end

  # I MADE THESE TESTS WITH DOUBLE QUOTES AND SPENT A HALF HOUR
  # TRYING TO DISCOVER WHY I COULDN'T CREATE A NEW VIEWER OBJECT
  # I DISCOVERED IT ONLY WORKS WITH SINGLE QUOTES

  # Viewer.new('Jim','Mellancamp')
  # Viewer.new('Phil','Backslash')
  # Viewer.new('Paul','McCartney')
  # Viewer.new('Ian','Candy')
  # Viewer.new('Dave','Mieloch')
  # Viewer.new('Mr.','McGoo')

  def self.all
    ALL
    # should return all of the viewers
  end

  def self.find_by_name(fullname)
    self.all.find {|name| name == fullname}
    # given a string of a full name, returns the first
      # customer whose full name matches
  end

  # def self.create_rating(score, movie) # didn't get to
  #   Rating.new(score, movie) # creates new rating
  #   Viewer.rating = # associates it with that viewer
  #   Movie.rating  = # associates it with that movie
  #
  #   # given a score and a movie, creates a new Rating and
  #     # associates it with that viewer and that movie
  # end

end


class Rating
  attr_accessor :score

  ALL = []

  def initialize
    ALL << self
  end

  def self.all
    ALL
    # returns all of the ratings
  end

  # def self.viewer
  #   Viewer.all.rating.find {|rating| rating == self.rating }
  #   # returns the viewer for that given rating
  # end

  # def self.movie
  #   Movie.rating.find {|movie| rating == Movie}
  #   # returns the movie for that given rating
  # end

end

class Movie
  attr_accessor :title

  ALL = []

  def initialize(title)
    self.title = title
    ALL << self
  end

  def self.all
    ALL
    # returns an array of all movies
  end

  def self.find_by_title(title)

    # given a string of movie title, returns the first movie that matches
  end

  def self.ratings

    # returns an array of all ratings for that movie
  end

  def self.viewers

    # should return all of the viewers who have left ratings for that movie.
  end

  def self.average_rating

    # should return the average of all of the scores for the ratings of that particular movie.
  end
end
