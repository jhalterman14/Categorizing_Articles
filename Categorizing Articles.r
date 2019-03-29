


a<-c("ball","sport","team","player","field","win","lose", "Giants", "Dodgers", "Patriots","Super","Bowl")
b<-c("Trump", "Congress" , "Senate" , "bill", "democracy" ,"mandate","Democratic","party","parties" )
c<-c( "experiment" ,"future", "medicine", "observations","hypothesis", "conclusion", "scientist", "scientists","global warming", "space","researchers", "NASA", "Mars","Rover","climate change", "glaciers")
d<-c("local","suspect","report", "police", "neighbor","weather","rain","sunny","homeless", "Sacramento")


categorize<-function(sentence) {
	if(length(sentence[sentence %in% a]) > length(sentence[sentence %in% b]) ){	
 		print ("Sports")}
 			else {
	if(length(sentence[sentence %in% b]) > length(sentence[sentence %in% c])){
		print("Politics")}
			else {
      if(length(sentence[sentence %in% c]) > length(sentence[sentence %in% d])){
		print("Science")}
			else {
		print("News") 
}
 }
  }
   }


#Some test sentences, half of them I pulled off of a random article online.

str1<-"The team almost didn't win when they kicked the ball down the field ball ball"
sentence<-strsplit(str1," ")[[1]]

str2<-"Trump met with Congress today to discuss the bill"
sentence1<-strsplit(str2," ")[[1]]

str3<-"The scientists have a new hypothesis on global warming"
sentence3<-strsplit(str3," ")[[1]]

str4<-"The suspect got away yesterday after the police chase"
sentence4<-strsplit(str4," ")[[1]]

str5<-"Sacramento leaders say they are determined to find solutions to the city's homeless crisis."
sentence5<-strsplit(str5," ")[[1]]

str6<-"Many NASA instruments are keeping tabs on Hurricane Michael from space, including AIRS and MISR."
sentence6<-strsplit(str6," ")[[1]]

str7<-"The House Democratic Women's Working Group is inviting female members of both parties to wear white to President Donald Trump's State of the Union address next week as a symbol of solidarity."
sentence7<-strsplit(str7," ")[[1]]

str8<-"Goodell has used his Super Bowl bully pulpit in the past to lobby for rule changes that he wanted to see, and succeeded."
sentence8<-strsplit(str8," ")[[1]]

str9<-"One snowstorm over the U.S East Coast does not invalidate decades of observations around the entire world showing that yes, the planet is warming,"
sentence9<-strsplit(str9," ")[[1]]

str10<-"A third suspect ran out the backdoor of the home."
sentence10<-strsplit(str10," ")[[1]]


categorize(sentence)
categorize(sentence1)
categorize(sentence3)
categorize(sentence4)
categorize(sentence5)
categorize(sentence6)
categorize(sentence7)
categorize(sentence8)
categorize(sentence9)
categorize(sentence10)

#The output looks like this:
# [1] "Sports"
# [1] "Politics"
# [1] "Science"
# [1] "News"
# [1] "News"
# [1] "Science"
# [1] "Politics"
# [1] "Sports"
# [1] "Science"
# [1] "News"

