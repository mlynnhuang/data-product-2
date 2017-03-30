library(shiny)

shinyUI(fluidPage(
    titlePanel("Boston Marathon Qualifying Time"),
    sidebarLayout(position = "right",
    sidebarPanel(
      #helpText("This app allows you to check the Boston Marathon qualifying time"),
      selectInput("select1", label = h4("Select Your Age Group"), 
                  choices = c("18-34", 
                              "35-39",
                              "40-44", 
                              "45-49",
                              "50-54", 
                              "55-59",
                              "60-64", 
                              "65-69",
                              "70-74", 
                              "75-79",
                              "80 and over"),
                  selected = "18-34")),
      selectInput("select2", label = h4("Choose Your Sex"), 
                  choices = c("Male", "Female"),
                  selected = "Male")),
      submitButton("submit"),
   mainPanel(
      plotOutput("my_output_plot"),
      tableOutput('tab2')
     )
  )
)

