require 'pp'
dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'sunshine')

Sunshine.api_key = File.read(File.join(dir, '..', '.sunlight_api_key'))

# search_results = Sunshine::Lobbyist.search('Willian Corr')

filing = Sunshine::DisclosureFiling.find('29D4D19E-CB7D-46D2-99F0-27FF15901A4C')
filing.lobbyists.each do |lob|
  puts lob.full_name
end

filing = Sunshine::DisclosureFiling.find(:first, {:client_name => 'Sunlight Foundation'})
filing.lobbyists.each do |lob|
  puts "-- #{lob.full_name}"
end

results = Sunshine::Lobbyist.search('Thompson')
results.each do |score, lobbyist|
  puts "SCORE:#{score} LOBBYIST:#{lobbyist.full_name}"
end

results = Sunshine::Lobbyist.search('Willian Corr')
william = results.first[1]
puts william.full_name
william.filings.each do |filing|
  puts filing.registrant_name
end
#puts william.full_name
#pp Sunshine::DisclosureFiling.find(:all, {:client_name => william.full_name})
