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

  # class finder methods

  def self.find_by_name(fullname)
    self.all.find {|name| name == fullname}
    # given a string of a full name, returns the first
      # customer whose full name matches
  end

  # Viewer.find_by_name('Jim', 'Mellancamp')
  # Viewer.find_by_name('Phil','Backslash')
  # Viewer.find_by_name('Paul','McCartney')
  # Viewer.find_by_name('Ian','Candy')
  # Viewer.find_by_name('Dave','Mieloch')
  # Viewer.find_by_name('Mr.','McGoo')

  # def self.create_rating(score, movie) # didn't get to
  #   Rating.new(score, movie) # creates new rating
  #   Viewer.rating = # associates it with that viewer
  #   Movie.rating  = # associates it with that movie
  #
  #   # given a score and a movie, creates a new Rating and
  #     # associates it with that viewer and that movie
  # end

end
