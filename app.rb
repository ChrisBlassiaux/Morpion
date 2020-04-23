
require 'bundler'
Bundler.require
 
$:.unshift File.expand_path("./../lib/app", __FILE__)
$:.unshift File.expand_path("./../lib/views", __FILE__)
require 'player'
require 'game'
require 'boardcase'
require 'board'
require 'application'


game = Application.new
game.apply 