#!/usr/bin/ruby
begin
  require 'netsoul'
rescue LoadError
  STDERR.puts "Error: #{$!}"
  exit
end
    
begin
  rss = NetsoulServer.new(ARGV)
rescue
  STDERR.puts "[#{Time.now.to_s}] Error: #{$!}"
  retry
end

