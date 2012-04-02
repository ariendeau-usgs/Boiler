module Boiler extend self
	def serve
		if PROJECT_TYPE == "foundation"
			url ="http://foundation.zurb.com/files/foundation-download-2.2.zip"
			title ="Foundation 2.2"
			filename ="foundation-download-2.2.zip"
			FileUtils.mkdir PROJECT_NAME
			FileUtils.cd PROJECT_NAME
			system("wget #{url}")
			system("tar -xvf #{filename}")
			FileUtils.rm_rf filename
		elsif PROJECT_TYPE == "h5bp"
			url ="https://github.com/downloads/avintagephoto/html5-boilerplate/h5bp.tar.gz"
			title ="html5-boilerplate"
			filename ="h5bp.tar.gz"
			system("wget #{url}")
			system("tar -xvf #{filename}")
			system("mv h5bp-html5-boilerplate-359a13f #{PROJECT_NAME}")
			FileUtils.rm_rf filename
		end
		
	end
end