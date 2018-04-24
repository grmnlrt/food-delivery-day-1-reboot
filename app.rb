require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/meal_repository'

require_relative 'router'

meals_repo = MealRepository.new('data/meals.csv')
meals_controller = MealsController.new(meals_repo)

router = Router.new(meals_controller)
router.run
