require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.has_key?(title)
  end

  def >(other_startup)
    @funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "The title is invalid"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    money_cost = @salaries[employee.title]
    if  @funding >= money_cost
      @funding -= employee.pay(money_cost)
    else
      raise "The funding is not enough"
    end    
  end

  def pay_employee(employee)
    money_cost = @salaries[employee.title]
    if @funding >= money_cost
      employee.pay(money_cost)
      @funding -= money_cost
    else
      raise "The funding is not enough!"
    end    
  end

  def payday
    @employees.each { |employee| self.pay_employee(employee) }
  end
end