class MealsView
  def display(meals_array)
    meals_array.each do |meal|
      puts "#{meal.id} - #{meal.name} (#{meal.price}€)"
    end
  end

  def ask_user_for(string)
    puts string
    gets.chomp
  end
end
