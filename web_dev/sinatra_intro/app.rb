# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#A /contact route that displays an address (you can make up the address).
get '/contact' do
  "The address: <br>
  584 Michigan Ave<br>
  Chicago, IL USA"
end

#A /great_job route that can take a person's name as a query parameter (not a route parameter) 
# and say "Good job, [person's name]!". 
#If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  name = params[:name]
  if name
  "Good job, #{name}!"
  else 
  "Good job!"
  end
end

#A route that uses route parameters to add two numbers and respond with the result. 
#The data types are tricky here -- when will the data need to be (or arrive as) a string?

get '/add/:number1/:number2' do
  x = params[:number1].to_i
  y = params[:number2].to_i
  sum = x + y
  "#{x} + #{y} = #{sum}"
end

# Make a route that allows the user to search the database in some way --
# maybe for students who have a certain first name, or some other attribute. 

get '/attending/:campus' do
  students_at_campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  list_of_students_at_campus = ""
  students_at_campus.each do |student|
    list_of_students_at_campus << "ID: #{student['id']}<br>"
    list_of_students_at_campus << "Name: #{student['name']}<br>"
    list_of_students_at_campus << "Age: #{student['age']}<br><br>"
  end
  "This is the list of students that will be attending #{params[:campus]}"
  list_of_students_at_campus 
end