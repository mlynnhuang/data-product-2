#server.R
library(shiny)
library(dplyr)
library(ggplot2)

shinyServer(
    function(input, output){

   bq<-read.csv("./bq-time1.csv",stringsAsFactors = TRUE)
   output$my_output_plot <- renderPlot({
     ggplot(filter(bq, Sex==input$select2), aes(AgeGroup, Time)) +
     geom_bar(stat = 'identity') +
     geom_text(aes(label = Time), vjust = -1) +
    # ggtitle('BQ Qualifying Time') 
     # ggtitle (input$select2) 
       labs(x="Age Group", 
            y="Qualifying Time (hh:mm)",
            title= input$select2,
            subtitle="Qualifying Time")
     })
   
 output$tab2 <- renderTable({filter(bq, Sex==input$select2,AgeGroup==input$select1)
    }
  )
 }
)

