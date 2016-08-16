#########################################################
#This program is a webcrawler kind of one 
#It access espn website 
#Gets the specific country data 
#Lists of the players
#Their statistics
######################################################
website <- getHTMLLinks("http://www.espncricinfo.com/")
#After parsing and using internal nodes we do this 
#This step actually gets all the links embedded in the website 
website.template <- "http://www.espncricinfo.com"
#creating a template for joining as the webcrawler 
head(website)
website
#A <- grep("india",website,value = T)
#A, experiment

country.data <- website[23:32]
country.data[3]
#Choosing the data we want 
website.again <- getHTMLLinks("http://www.espncricinfo.com/")
#tried again
website.again
head(website.again)
website.country <- paste(website.template,country.data[3],sep = '')
website.country
#The link or the main point
#Since shifting from one page to another seems too confusing
#We made this trick 
#We extract the wepage links 
#Combine it with the template we created in the begining 
#It gives us the url to the required webpage 

website.country.data <- htmlParse(website.country,useInternalNodes = T)
#Parsing the website
class(website.country.data)
website.country.player <- getHTMLLinks(website.country.data)
#Getting the embedded links in the website again
website.country.player
player.data <- grep("player",website.country.player,value = T)
#Getting the list of the players with grep 
player.data[31]
player.data.template <- "/india/content/player/"
#Making a template for the players
website.template
player.individual.data <- paste(website.template,player.data,sep = '')
#Combining the complete or required website with the exact player
player.individual.data
one.player <- readHTMLTable(player.individual.data[19],which = 13)
#Unfortunately 19 gave us Ishant Sharma
#This reads all the tables in the webpage and we can select a required one 
#We have already written a program just for this 
#That would only indicate which player you want and which table you want from that table 
one.player
#Prints the result 
