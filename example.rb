require './lib/console.rb'
require './lib/store.rb'
require 'pry'

Store.new_console "Playstation 4 slim" do
  add_games("Mlb The show 14, Dying light")
  add_controller("Wireless dual shock 4,Wired Dual Schock 3")
  add_accesories("PlayStation Cam")
end

Store.print_consoles