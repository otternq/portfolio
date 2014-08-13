require 'bundler'

Bundler.require

require './app/main.rb'

set :app_file, __FILE__ + '/app'
set :root, File.dirname( __FILE__ ) + '/app'
set :public_dir, File.dirname( __FILE__ ) + '/app/static'

run MyApp
