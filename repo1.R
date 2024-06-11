library(babynames)
library(tidyverse)
bb_names <- babynames

Marie <- bb_names %>% 
  mutate(name = "Marie")
ggplot(bb_names %>% 
         filter = Names ="Marie", year = 1982), aes(x=year))+ 
  geom_line()+
  lab title= "Maries in History", x= "Names", y= proportions()
  


  ggplot(babynames %>% group_by(sex) %>% 
           filter(name == "Marie", year>=1982),aes(x = year, y = prop))+
  geom_line () +
   labs (title = "Marie in History", x = "Names", y= "proportion")

 
   ggplot(babynames %>% filter(name=="Joe",),aes(x = year, y=prop,colour=sex))+
    geom_line()
  labs(title = "Joe's throughtout History" , x = "Names", y="proportion")+
    theme_gray()
 
  bb_names_2002 <- bb_names %>% 
    filter(sex == "F",
  year =='2002') %>% 
    arrange(desc(n)) %>% 
    head(10)
  
  ggplot(data = bb_names_2002, aes(x=name,y=n))+
    geom_col(fill="lightyellow")+
    labs(title = "Women names of 2002" , x = "Names", y="proportion")+
    theme_gray()

 #Create a new data set called the_nineties that only contains years from the 1990s.
  
  the_nineties <- bb_names %>% 
    filter(year<=1999,year>=1990) 

  write_csv(the_nineties,file="bbnames_nineties.csv")        
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   
  

 
  
        
        
        
        
       