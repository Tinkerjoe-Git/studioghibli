ENV['SINATRA_ENV'] ||= "development"
require 'faker'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require './app/models/concerns/slugify'
require_all 'app'
