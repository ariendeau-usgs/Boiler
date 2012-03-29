BOILER_VERSION = 'VERSION :: .01 [dev]'
module Boiler extend self
	def makeDirs
		dirs		=  [ 	"css", "js", "inc", "img", "js/libs"]
		dirs.each do |d|
			puts "Creating the #{d} folder!"
			FileUtils.mkdir "#{d}"
		end
	end
	def makeFiles
		webfiles = ["css/style.css", "js/script.js", ".htaccess", "index.#{ARGV.first}"]
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
	def fetchLibs
		puts "Creating the jQuery library!"
		Boiler.download("http://code.jquery.com/jquery-1.7.2.min.js", "js/libs/jquery-1.7.2.min.js")
		puts "Creating the Modernizr library!"
		Boiler.download("http://www.modernizr.com/downloads/modernizr-2.5.3.js", "js/libs/modernizr-2.5.3.js")
		puts "Creating the Underscore library!"
		Boiler.download("http://documentcloud.github.com/underscore/underscore-min.js", "js/libs/underscore-min.js")
		puts "Creating the Backbone library!"
		Boiler.download("http://documentcloud.github.com/backbone/backbone-min.js", "js/libs/backbone-min.js")
	end
end