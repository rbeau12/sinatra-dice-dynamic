require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:how_many_sides") do
  @numDice=params.fetch('number_of_dice').to_i
  @numSides=params.fetch('how_many_sides').to_i
  @rolls=[]
  @numDice.times do
    roll=rand(1..@numSides)
    @rolls.push(roll)
  end
  erb(:flexible)
end
