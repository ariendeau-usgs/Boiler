BOILER_HELP = <<-EOS
	commands:
		help    => shows this help
		version => shows boiler version
		php     => creates a php boilerplate
    html    => create a simple html boilerplate
EOS

module Boiler extend self
  def help
    puts BOILER_HELP
  end
  def help_s
    BOILER_HELP
  end
end