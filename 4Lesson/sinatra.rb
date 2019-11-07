require 'sinatra'
require 'yaml'
require_relative 'les2_ex2'

get '/' do
  erb :index
end


post '/' do

  @pets =  Animal.new

  if params[:name] != "s"
    @name = params[:name]
    puts "Name first pet: #{@name}"
    @life = 11
    @mood = 101
    @hungry = 102
    @sleepy = 202
    status = ["name" => @name,
              "breed" => "Dog",
              "life" => @life,
              "mood" => @mood,
              "hungry" => @hungry,
              "sleepy" => @sleepy]
  File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
  end
  

  stat_save = YAML.load( File.read("animal.yaml"))
  @name = stat_save[0]["name"]
  @breed = stat_save[0] ["breed"]
  @life = stat_save[0] ["life"]
  @mood = stat_save[0] ["mood"]
  @hungry = stat_save[0] ["hungry"]
  @sleepy = stat_save[0] ["sleepy"]

 if params[:feed]
  @pets.feed
  elsif params[:putToBed]
    @animal.putToBed
  elsif params[:walk]
    @animal.walk
  elsif params[:toss]
    @animal.toss
  elsif params[:wash]
    @animal.wash
  end

  erb :index
end