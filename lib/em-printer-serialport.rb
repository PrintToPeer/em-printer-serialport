$eventmachine_library = :pure_ruby
require 'em/pure_ruby'
require 'serialport'

%w(serial_port connection).each do |file|
  require "em-printer-serialport/#{file}"
end