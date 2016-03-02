if RUBY_ENGINE == 'opal'
  require 'sandoz/sandoz'
else
  require 'opal'
  require 'version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
