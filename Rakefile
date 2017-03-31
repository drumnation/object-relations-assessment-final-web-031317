require_relative '../object-relations-assessment-final-web-031317/config/environment'
require 'sinatra/activerecord/rake'

  desc 'Enter a console'
  task :console do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Pry.start
end
