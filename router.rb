class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    while @running
      choice = display_menu
      print `clear`
      action(choice)
    end
  end

  private

  def display_menu
    puts "-------------------"
    puts "------- MENU ------"
    puts "-------------------"
    puts "1. List all meals"
    puts "2. Add new meal"
    puts "3. List all customers"
    puts "4. Add new customer"
    puts "9. Exit"
    gets.chomp.to_i
  end

  def action(choice)
    case choice
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add_meal
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add_customer
    when 9 then @running = false
    else
      "Wrong action"
    end
  end
end
