# Create a meal plan for a week
# Generate meal for breakfast, lunch, dinner 7 times
# Randomize each meal from collection of recipes
# Create database that displays week's meal plan

require 'sqlite3'

db = SQLite3::Database.new("meals.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS meals(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES types(id)
  );
  CREATE TABLE IF NOT EXISTS types(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  );
SQL

db.execute(create_table_cmd)
db.execute("INSERT INTO meals (name) VALUES ('Fruit Soup with Nuts')")

def meal_generator(breakfast, lunch, dinner)
  breakfast
  lunch
  dinner
end

breakfast = ["Fruit Soup with Nuts", "Blueberry and Grilled Peach Quinoa Parfait", "Bacon and Eggs in a Jar"]

