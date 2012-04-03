#make the directory
module Boiler extend self
  	def create
  		if ARGV.length < 2
  			puts "Need a type and a name"
  			return 0
  		elsif ARGV.length >= 2
        case PROJECT_TYPE when 'php' || 'html' 
          dirs  = [  "css", "js", "inc", "img", "js/libs"]
          files = ["css/style.css", "js/script.js", ".htaccess", "index.#{PROJECT_TYPE}"]
          puts "Creating #{PROJECT_NAME}"
          FileUtils.mkdir PROJECT_NAME
          puts "Diving into #{PROJECT_NAME}"
          FileUtils.cd PROJECT_NAME
          Boiler.makeDirs dirs
          Boiler.makeFiles files
          Boiler.fetchLibs("js/libs")
          puts "==#{PROJECT_NAME}== has been created!"
          puts "Please code responsivly :)" 
        when 'node'
          if ! PROJECT_NAME
            puts "NAME YOUR PROJECT PLEASE!"
            return 0
          end
          puts "Creating #{PROJECT_NAME}"
          FileUtils.mkdir PROJECT_NAME
          puts "Diving into #{PROJECT_NAME}"
          FileUtils.cd PROJECT_NAME
          node_dirs  = [ "public", "models", "views", "controllers", "public/css", "public/js", "public/inc", "public/img", "public/js/libs"]
          Boiler.makeDirs node_dirs
          node_files = ["server.js", "public/css/style.css", "public/js/script.js", ".htaccess", "views/index.html"]
          Boiler.makeFiles node_files
          Boiler.fetchLibs("public/js/libs")
          puts "==#{PROJECT_NAME}== has been created!"
          puts "Please code responsivly :)" 
        end
                
       end 
  	end ##END CREATE
end

