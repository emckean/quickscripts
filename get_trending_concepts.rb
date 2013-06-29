
require 'csv'
require 'cgi'
require 'uri'

api_token = 'REFRESH ME'


#read in lists CSV file 

File.open(ARGV[0]) do |list_file|
  list_file.each do |line|
    guid =  line.chomp
 #   puts ""
#    puts "#{guid}"
    article = system ("curl https://api.helloreverb.com/v1/articles/id\\?guid=#{guid}\\&relatedArticleLimit=0\\&contentFormat=json-v1\\&api_token=#{api_token}")
    puts "#{article},"
  end  
#  lists.each do |list|
#    guid = URI(list.url)
#    list_permalink = uri.path.sub( "/lists/", "" )
    # puts ""
    # print "#{list_permalink}, #{list.topic}/n"
    #  system ("curl \"https://api.helloreverb.com/v1/articles/id?guid={guid}&relatedArticleLimit=0&contentFormat=json-v1&api_token={api_token}\"")
    # end
  end

