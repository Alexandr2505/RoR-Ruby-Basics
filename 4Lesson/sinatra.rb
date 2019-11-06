require 'sinatra'
require 'yaml'
require_relative 'les2_ex2'

get '/' do
  erb :index
end


post '/' do
  if params['name'] != "s"
    @names = params['name']
  puts 'Name first pet: ' + @names
  end
  @animal = Animal.new(params['name'])


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
  elsif params[:help]
    @animal.help
  elsif params[:exit]
    status = ["life" => 10,
              "mood" => 100,
              "hungry" => 100,
              "sleepy" => 200]
   File.open("animal.yaml", "w") { |file| file.write(status.to_yaml) }
  end
  erb :index
end




