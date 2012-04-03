BOILER_VERSION = 'VERSION :: .01 [dev]'
module Boiler extend self
	def makeDirs dirs		
		dirs.each do |d|
			puts "Creating the #{d} folder!"
			FileUtils.mkdir "#{d}"
		end
	end
	def makeFiles webfiles
		webfiles.each do |f|
			puts "Creating the #{f} file!"
			FileUtils.touch "#{f}"
		end
	end
	def download full_url, to_here
	   require 'open-uri'
	   writeOut = open(to_here, "wb")
	   writeOut.write(open(full_url).read)
	   writeOut.close
	end
	def fetchLibs custom_path
		puts "Creating the jQuery library!"
		Boiler.download("http://code.jquery.com/jquery-1.7.2.min.js", "#{custom_path}/jquery-1.7.2.min.js")
		puts "Creating the Modernizr library!"
		Boiler.download("http://www.modernizr.com/downloads/modernizr-2.5.3.js", "#{custom_path}/modernizr-2.5.3.js")
		puts "Creating the Underscore library!"
		Boiler.download("http://documentcloud.github.com/underscore/underscore-min.js", "#{custom_path}/underscore-min.js")
		puts "Creating the Backbone library!"
		Boiler.download("http://documentcloud.github.com/backbone/backbone-min.js", "#{custom_path}/backbone-min.js")
	end
	def check_varibles
		if ! PROJECT_NAME
         puts "NAME YOUR PROJECT PLEASE!"
         return 0
      elsif ! PROJECT_TYPE
      	puts "Did you forget what type of project that you are making?"
         return 0
      end
	end
end