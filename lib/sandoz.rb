# require all the files, only if Opal is executing
if RUBY_ENGINE == 'opal'
  require_relative 'sandoz/sandoz.rb'
  require_relative 'sandoz/version'
else
  # NOT running inside of opal, set things up
  # so opal can find the files.
  require 'opal'
  Opal.append_path File.expand_path('..', __FILE__).untaint
end