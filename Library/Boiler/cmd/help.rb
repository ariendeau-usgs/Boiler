BOILER_HELP = <<-EOS
    commands:
          help    => shows this help
          version => shows boiler version
          create  => creates a blank php or html boilerplate
                  => Usage: boil create <type: php or html> <project name>
          serve   => download boilerplates and name them
                  => Usage: boil serve <type: h5bp or foundation> <project name>
EOS

module Boiler extend self
  def help
    puts BOILER_HELP
  end
  def help_s
    BOILER_HELP
  end
end