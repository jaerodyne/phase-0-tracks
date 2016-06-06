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
    name VARCHAR(255)
SQL

db.execute(create_table_cmd)
# db.execute("INSERT INTO meals (name) VALUES ('Fruit Soup with Nuts')")

def meal_generator(food)
  food
end

breakfast = ["Fruit Soup with Nuts", "Blueberry and Grilled Peach Quinoa Parfait", "Bacon and Eggs in a Jar"]
lunch = ["Chicken Taco Salad", "Almost Instant Noodle Soup", "Mason Jar Pesto Pasta"]
dinner = ["Mason Jar Lasagna", "Shepherd's Pie", "Cornbread Chili"]

