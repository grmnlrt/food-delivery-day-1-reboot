require_relative '../views/customers_view'
require_relative '../models/customer'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
  end

  def list
    customers = @customer_repository.all
    @customers_view.display(customers)
  end

  def add_customer
    name = @customers_view.ask_user_for("Customer's name?")
    address = @customers_view.ask_user_for("Customer's address?")
    customer = Customer.new(name: name, address: address)
    @customer_repository.add(customer)
    list
  end
end
