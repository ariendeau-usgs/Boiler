#make the directory
module Boiler extend self
  	def create
  		if ARGV.length < 2
  			puts "Need a type and a name"
  			return 0
  		elsif ARGV.length >= 2
  			if PROJECT_TYPE == 'php' || PROJECT_TYPE == 'html' 
  				puts "Creating #{PROJECT_NAME}"
				FileUtils.mkdir PROJECT_NAME
				puts "Diving into #{PROJECT_NAME}"
				FileUtils.cd PROJECT_NAME
				Boiler.makeDirs
				Boiler.makeFiles
				Boiler.fetchLibs
				puts "==#{PROJECT_NAME}== has been created!"
	  			puts "Please code responsivly :)"	
  			end
  		end
  	end ##END CREATE
end

