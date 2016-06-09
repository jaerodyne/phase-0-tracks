# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
playlist_database = SQLite3::Database.new("playlist.db")
playlist_database.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

#show playlist
get '/playlist' do
  @playlist_database = playlist_database.execute("SELECT * FROM songs")
  erb :playlist
end

get '/song/new' do
  erb :new_song
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

post '/playlist' do
  playlist_database.execute("INSERT INTO songs (name, artist) VALUES (?,?)", params['name'], params['artist'])
  redirect '/playlist'
end