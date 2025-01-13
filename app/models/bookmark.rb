class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe_id, uniqueness: {scope: :category_id, message: "Recipe already in list"}
  validates :comment, length: { minimum: 6, message: "Must have at least 6 characters" }
end
