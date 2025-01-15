# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "json"
require "open-uri"

categories = %w[Breakfast Pasta Seafood Dessert]

puts "Cleaning database..."
Bookmark.destroy_all
Category.destroy_all
Recipe.destroy_all

puts "Creating recipes"

def recipe_builder(id)
  url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  id_serialized = URI.parse(url).read
  id = JSON.parse(id_serialized)
  name = id["meals"][0]["strMeal"]
  description = id["meals"][0]["strCategory"]
  recipe_url = id["meals"][0]["strMealThumb"]
  rating = rand(0..5)
  Recipe.create!(name: name, description: description, image_url: recipe_url, rating: rating)
end

def looper(categories)
  categories.each do |category|
    array = []
    url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
    cat_serialized = URI.parse(url).read
    cat = JSON.parse(cat_serialized)
    meals = cat["meals"]
    meals.each do |meal|
      array << meal["idMeal"]
    end
    array.each do |id|
      recipe_builder(id)
    end
  end
end

looper(categories)
puts "Created #{Recipe.count}"
puts "FINISHED"
