require 'sinatra'
require 'yaml'
require_relative 'les2_ex2'

get '/' do
  @breed = "Cat"
  erb :index
end


post '/' do
  @name = params['name']
  @breed = "Cat"
  puts "Name first pet: #{@names}"
  @animal = Animal.new(params['name'])

  def chas
  if params[:feed]
    @animal.feed
  elsif params[:putToBed]
    @animal.putToBed
  elsif params[:walk]
    @animal.walk
  elsif params[:toss]
    @animal.toss
  elsif params[:wash]
    @animal.wash
  end

  status = ["name" => @name,
            "breed" => @breed,
            "life" => @life,
            "mood" => @mood,
            "hungry" => @hungry,
            "sleepy" => @sleepy]
  File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
end
  erb :index
end