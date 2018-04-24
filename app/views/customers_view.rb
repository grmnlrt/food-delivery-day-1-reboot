class CustomersView

  def display(customers_array)
    customers_array.each do |customer|
      puts "#{customer.id} - #{customer.name} (#{customer.address})"
    end
  end

  def ask_user_for(string)
    puts string
    gets.chomp
  end
end
