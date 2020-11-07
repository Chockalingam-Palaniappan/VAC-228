#step:1 Framing the question
#Step:2 Data Collection
#Check whether you can scrap
library(robotstxt)
path<-paths_allowed("https://www.amazon.com/s?i=electronics-intl-ship&bbn=16225009011&rh=n%3A16225009011%2Cn%3A2811119011&s=price-desc-rank&qid=1604745940&ref=sr_st_price-desc-rank")
link<-"https://www.amazon.com/s?i=electronics-intl-ship&bbn=16225009011&rh=n%3A16225009011%2Cn%3A2811119011&s=price-desc-rank&qid=1604745940&ref=sr_st_price-desc-rank"
#Read the website
library(rvest)
web<-read_html(link)
Name<-web%>%html_nodes(".a-color-base.a-text-normal")%>%html_text()
Price<-web%>%html_nodes(".a-price-whole")%>%html_text()
Rating<-web%>%html_nodes(".aok-align-bottom")%>%html_text()
AmazonPhoneAccessories.ratings=data.frame(Name,Price,Rating)
View(AmazonPhoneAccessories.ratings)
write.csv(AmazonPhoneAccessories.ratings,"Amazon_Electronic_Products.csv")