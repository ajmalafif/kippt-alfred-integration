#!/usr/bin/ruby

require 'kippt'

client = Kippt::Client.new(username: "ajmalafif", token: "ec4d9e2988a179cc5342c635f6a6404139367d43")

account = client.account
account.username #=> "vesan"
account = client.account(true) # includes the API token
account.api_token    #=> "2544d6bfddf5893ec8617"

puts "Search kippt: "
kippt = gets.chomp
search = client.clips.search("kippt")

# clips = client.clips.all(limit: 25, offset: 50)

print "#{search}"

# right now stuck on how to print out lists or clips instead
# of having an output printed like this right now 
# => <Kippt::ClipCollection:0x007f959ba024d0>


