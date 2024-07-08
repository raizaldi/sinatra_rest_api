require 'sinatra/activerecord/rake'
require 'sinatra'
require 'sinatra/activerecord'


task :db do
  set :database, {:adapter => 'mysql2', :database => 'sinatra_api_development', :username => 'root', :password => '', :host => 'localhost'}
  ActiveRecord::Base.establish_connection(settings.database)
  # Jalankan operasi database Anda di sini
end
