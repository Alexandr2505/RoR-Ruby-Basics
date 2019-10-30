require "transf/version"

module Transf
  class Error < StandardError; end
  # Your code goes here...
  class WhoIs
  	def self.names(name_file)
  		@name_file = name_file
  	end
    def self.tester(a1, a2, a3, a4, a5, a6)
      @a1 = a1
	  @a2 = a2
	  @a3 = a3
	  @a4 = a4
	  @a5 = a5
	  @a6 = a6

	  case @a5
	    when 100..1000
	        x = "😃"
	    when 60..99
	    	x = "😐"
	    else
	    	x = "🤢"
	    end




	    File.open( @name_file , "w") do |file|
	   	file.write("<!DOCTYPE html>
					<head>
						<title>#{@a1}</title>
						<style>
							*{
								background-color: #AFEEEE;
							}
							#Card{
								background: #4169E0;
								color:  #E6E6FA;
								height: 200px;
								width: 30%;
								margin-left: auto;
				                margin-right: auto;
				                border-radius: 20px;
				                text-align: center;
							}
							p {background: #4169E0;}
							h1 {font-size:200px;
							    text-align: center;
							}
						</style>
					</head>
					<body>
						<div id = \"Card\">
							<p>Name: #{@a1}</p>
							<p>Breed: #{@a2}</p>
							<p>Hunger: #{@a3}</p>
							<p>Drowsiness: #{@a4}</p>
							<p>Happiness: #{@a5}</p>
							<p>Lifes: #{@a6}</p>
						</div>
						<h1>#{x}</h1>
					</body>
				</html>")
	    end
	end
  end
end
