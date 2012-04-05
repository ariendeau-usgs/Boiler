module Boiler extend self
	def download
		case PROJECT_TYPE when 'jquery'
			system('curl -OR http://code.jquery.com/jquery-1.7.2.min.js')
			puts "Downloaded jquery-1.7.2.min.js"
		when 'modernizr'
			system('curl -OR http://www.modernizr.com/downloads/modernizr-2.5.3.js')
			puts "Downloaded modernizr-2.5.3.js"
		when 'underscore'
			system('curl -OR http://documentcloud.github.com/underscore/underscore-min.js')
			puts "Downloaded underscore-min.js"
		when 'backbone'
			system('curl -OR http://documentcloud.github.com/backbone/backbone-min.js')
			puts "Downloaded backbone-min.js"
		end
	end
end