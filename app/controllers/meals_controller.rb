require_relative '../views/meals_view'
require_relative '../models/meal'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meal_view = MealsView.new
  end

  def list
    display_meals
  end

  def add_meal
    name = @meal_view.ask_user_for("Meal's name?")
    price = @meal_view.ask_user_for("Meal's price?").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.add(meal)
    display_meals
  end

  private

  def display_meals
    # fetch meals in meal_repository
    meals = @meal_repository.all
    # display all meals
    @meal_view.display(meals)
  end
end
