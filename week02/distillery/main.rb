require 'sinatra'
require 'sinatra/reloader' if development?


require_relative 'marketingdepartment'
require_relative 'distillery'
require_relative 'beverage'
require_relative 'person'

  d1 = Distillery.new("Big Brew")
  d1.brew_beverage

  # Create a new person here
  p1 = Person.new("Lucy")
  # Take a beverage from the distillery and store it into a variable
  bought = d1.cellar.first
  p1.buy_beverage(bought)
  # Give that beverage to the person
  # have that person drink the
  new_bev = p1.liquor_cabinet.first
  p1.drink_beverage(new_bev)
  # Render an image of a beer bottle to represent the beer drank
  # Inside of this function, render an .erb template that you need to create inside of a 'views' folder
  # Here you need to create an instance variable '@num_beverages'
  # based on the number of beverages currently in the distillery,
  @num_beverages = d1.beverage_count
  # This instance variable is accessible in the erb file so that you can do the following
  # (see the code snipped below). This will show a beer bottle for the current number of beers in the file.


get "/brew_beverage" do
  erb :brew
end

get "/drink_beverage" do
  erb :drink_it
end

get "/beverage_stock" do
  erb :stock
end


