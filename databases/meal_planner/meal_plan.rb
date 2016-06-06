# Create a meal plan for a week
# Generate meal for breakfast, lunch, dinner 7 times
# Randomize each meal from collection of recipes
# Create database that displays week's meal plan

require 'sqlite3'

db = SQLite3::Database.new("meal_plan.db")
db.results_as_hash = true

def meal_generator(breakfast, lunch, dinner)
  breakfast
  lunch
  dinner
end