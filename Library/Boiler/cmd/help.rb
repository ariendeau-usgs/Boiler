BOILER_HELP = <<-EOS
    :: commands ::
          help
            => <command>
          create
            => php
            => html 
            => node
          serve
            => h5bp
            => foundation
          download
            => jquery
            => modernizr
            => underscore
            => backbone
            => custom
          github
            => init  
            => commit
          version
EOS
BOILER_CREATE_HELP = <<-EOS
      == create ==============================
      Creates a blank php or html boilerplate
      == Usage: ==============================
      
        boil create <type> <project name>

      == Options thus far: ===================
        :: php :: node :: html ::
      ========================================
EOS
BOILER_SERVE_HELP = <<-EOS
      == serve ================================
      download boilerplates & names the project
      == Usage: ===============================
      
        boil serve <type> <project name>

      == Options thus far: ===================
        :: h5bp :: foundation ::
      ========================================
EOS
BOILER_DOWNLOAD_HELP = <<-EOS
      == download==============================
      download javascript libs or files easily
      == Usage: ===============================
      
        boil download <option>

      == Options thus far: ===================
        :: modernizr :: jquery     :: 
        :: backbone  :: underscore ::
        :: custom    ::            ::
      ========================================
      *NOTE on custom urls
      This can be any url as long as it points
      to a file directly.
      Make sure that the url is in "" or ''
EOS
BOILER_GITHUB_HELP = <<-EOS
      == github ===============================
      Compresses common github processes
      == Commands: ============================
      
      =============== init ====================
        
        boil github init <url>

      ============== commit ===================

        boil github commit <message> <branch>

      =========================================
EOS

module Boiler extend self
  def help
    case PROJECT_COMMAND
    when "create"
      puts BOILER_CREATE_HELP
    when "serve"
      puts BOILER_SERVE_HELP
    when "github"
      puts BOILER_GITHUB_HELP
    when "download"
      puts BOILER_DOWNLOAD_HELP
    else
      puts BOILER_HELP
    end
  end
  def help_s
    BOILER_HELP
  end
end