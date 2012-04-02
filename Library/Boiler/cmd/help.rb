BOILER_HELP = <<-EOS
    commands:
          help    => shows this help
          version => shows boiler version
          create  => creates a php or html boilerplate
          serve   => download boilerplates and name them
EOS

module Boiler extend self
  def help
    puts BOILER_HELP
  end
  def help_s
    BOILER_HELP
  end
end