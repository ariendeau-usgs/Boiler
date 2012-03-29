def which cmd, silent=false
  cmd += " 2>/dev/null" if silent
  path = `/usr/bin/which #{cmd}`.chomp
  if path.empty?
    nil
  else
    Pathname.new(path)
  end
end

def which_s cmd
  which cmd, true
end
