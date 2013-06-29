require 'json'

a = File.read(ARGV[0])
j =  JSON.parse(a)
topiclist = j['articles'].map do |article|
	article['topics'] 
end
puts topiclist