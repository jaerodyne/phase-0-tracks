# Create a meal plan for a week
# Generate meal for breakfast, lunch, dinner 7 times
# Randomize each meal from collection of recipes
# Create database that displays week's meal plan

require 'sqlite3'

db = SQLite3::Database.new("meal_plan.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS meal_plan(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    type_id INT
    FOREIGN KEY (type_id) REFERENCES types(id)
  )
SQL

def meal_generator(breakfast, lunch, dinner)
  breakfast
  lunch
  dinner
end