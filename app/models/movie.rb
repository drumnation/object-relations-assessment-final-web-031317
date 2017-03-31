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
