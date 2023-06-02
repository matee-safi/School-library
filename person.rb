require_relative 'nameable'
class Person < Nameable
  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end


  attr_accessor :name, :age
  attr_reader :id, :rentals

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end
  private :of_age?

  def correct_name
    @name
  end
end
