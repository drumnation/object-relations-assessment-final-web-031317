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
