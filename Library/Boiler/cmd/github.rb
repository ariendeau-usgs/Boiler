module Boiler extend self
	def github
		case PROJECT_COM
		when "init"
			system "git init"
			puts "creating the README"
			FileUtils.touch "README"
			system "git add *"
			system "git commit -m 'Initial Commit'"
			puts "Added README and committed README"
			system "git remote add origin #{PROJECT_VAR01}"
			system "git push -u origin master"
			puts "pushed master branch to github"
		when "commit"
			system "git add *"
			system "git commit -m '#{PROJECT_VAR01}'"
			system "git push -u origin #{PROJECT_VAR02}"
			puts "Commited and pushed to Github"
		end
	end
end