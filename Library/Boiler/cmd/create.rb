#make the directory
module Boiler extend self
	def createPHP
		puts "Creating #{PROJECT_NAME}"
		FileUtils.mkdir PROJECT_NAME
		puts "Diving into #{PROJECT_NAME}"
		FileUtils.cd PROJECT_NAME
		Boiler.makeDirs
		Boiler.makeFiles
		Boiler.fetchLibs
		puts "==#{PROJECT_NAME}== has been created!"
		puts "Please code responsibly :)"
  	end
  	def createHTML
  		puts "Creating #{PROJECT_NAME}"
		FileUtils.mkdir PROJECT_NAME
		puts "Diving into #{PROJECT_NAME}"
		FileUtils.cd PROJECT_NAME
		Boiler.makeDirs
		Boiler.makeFiles
		Boiler.fetchLibs
		puts "==#{PROJECT_NAME}== has been created!"
  		puts "Please code responsibly :)"
  	end
end

