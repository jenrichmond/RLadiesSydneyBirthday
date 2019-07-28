library(datapasta)


speakers <- data.frame(stringsAsFactors=FALSE,
               Presenter = c("Megan Capriccio", "Chris Tham", "Sarah Romanes",
                             "Rachel Mak", "Talia Hagerty", "Jen Richmond",
                             "Belinda Fabian"),
                   topic = c("How to impress your boss: ggplot + RMarkdown",
                             "Multiplying in R",
                             "useR!2019 - my experience in Toulouse and all things R!",
                             "cloudyR but shinyR: incorporating cloud computing into a Shiny app",
                             "R for World Peace", "Memes, messages, mario, and more",
                             "Beginners teaching beginners: Learning R using meaningful data"),
                 twitter = c("@CapriccioMegan", "@Chris1Tham ", "@sarah_romanes", NA,
                             "@taliahagerty", "@jenrichmondPhD",
                             "@BeaCurious"),
                 contact = c("megan.capriccio@gmail.com", "chris.tham@hellotham.com",
                             "sarah.romanes@hotmail.com", "ryc.mak@gmail.com",
                             "thagerty@economicsandpeace.org",
                             "jennyrichmond@gmail.com", "belinda.fabian@hdr.mq.edu.au")
            )
