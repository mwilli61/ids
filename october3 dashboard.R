query<-"SELECT yearID,HR
FROM Teams
WHERE teamID='NYA'"

result<-sqldf(query)

# visualizing 
ggplot()+
  geom_line(data=result,aes(x=yearID, y=HR))+
  xlab('year')+
  ylab('homerun')