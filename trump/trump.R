trump_scan<-scan('trumpspeech.txt',what=character(),sep='\n')
trump_lines<-data_frame(line=1:85,text=trump_scan)
trump_words<-unnest_tokens(trump_lines,word,text)

bing<-get_sentiments('bing')

trump_words<-inner_join(trump_words,bing)

trump_words<-trump_words%>%
  group_by(word)%>%
  summarize(freq=n(),sentiment=first(sentiment))


wordcloud(trump_words$word,trump_words$freq)
wordcloud2(trump_words,figPath='trump.jpg',backgroundColor = 'black',color = 'white')
trump_matrix<-acast(trump_words,word~sentiment,value.var = 'freq',fill=0)
comparison.cloud(trump_matrix,colors=c('red','blue'))