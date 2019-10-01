require 'pry'

class Waiter
  attr_accessor :name, :years
  @@all = []

  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end

  def best_tipper
    meals.find_max do |meal|
    meal.tip
    end
    # meals.map.select do |meal|
    #   if meal.tip == best_tip
    #      meal.customer
    #    end
    # end

  end

    # tip_array = []
    # meals.map do |meal|
    #   tip_array << meal.tip
    # end
    # tip_array.sort
    # Meal.all
    # # meals.tip.sort.delete_at(-1).customer



end
