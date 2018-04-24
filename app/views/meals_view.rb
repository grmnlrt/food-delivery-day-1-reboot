class MealsView
  def display_meals(meals)
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name} (#{meal.price}€)"
    end
  end

  def ask_user_for(string)
    puts "#{string}"
    gets.chomp
  end
end
