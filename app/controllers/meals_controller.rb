require_relative '../views/meals_view'
require_relative '../models/meal'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list
    meals = @meal_repository.all
    @view.display_meals(meals)
  end

  def add
    name = @view.ask_user_for("Meal's name?")
    price = @view.ask_user_for("Meal's price?").to_i
    new_meal = Meal.new(name: name, price: price)
    @meal_repository.add_meal(new_meal)
    list
  end
end
