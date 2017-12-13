help_scan<-scan('help.txt',what=character(),sep='\n')
help_lines<-data_frame(line=1:369,text=help_scan)
help_words<-unnest_tokens(help_lines,word,text)

help_words<-help_words%>%
  filter(!(word%in% stop_words$word))
help_words<-help_words%>%
  group_by(word)%>%
  summarize(freq=n())
wordcloud(help_words$word,help_words$freq)
wordcloud2(help_words)