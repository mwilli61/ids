pepper_scan<-scan('pepper.txt',what=character(),sep='\n')
pepper_lines<-data_frame(line=1:387,text=pepper_scan)
pepper_words<-unnest_tokens(pepper_lines,word,text)

pepper_words<-pepper_words%>%
  filter(!(word%in% stop_words$word))
pepper_words<-pepper_words%>%
  group_by(word)%>%
  summarize(freq=n())
wordcloud(pepper_words$word,pepper_words$freq)
wordcloud2(pepper_words)