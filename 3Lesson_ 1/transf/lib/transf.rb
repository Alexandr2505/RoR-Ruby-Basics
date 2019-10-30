#cd: C:\3Lesson\transf
#gem build transf.gemspec
#gem install transf-0.1.0.gem

require "transf/version"

module Transf
  class Error < StandardError; end
  # Your code goes here...
  class WhoIs
    def self.tester(a1)
      @a1 = a1

puts "Enter name of file"
  name_file = gets.chomp
  name_file += ".html"
  if name_file == ".html"
  	name_file = "index.html"
  end


File.open( @name_file , "w") do |file|
	   	file.write("<!DOCTYPE html>
					<head>
						<title>#{@a1}</title>
						<style>
							
						</style>
					</head>
					<body>
						
					</body>
				</html>")
	end
  end
end