library(shiny) 

shinyUI(
  pageWithSidebar(

    headerPanel(title=HTML("Selection of Prediction Model"), windowTitle="Selection of Prediction Model"),

    sidebarPanel(
		h4("Select/Unselect Dataset:"),
		checkboxInput("iris", label="Iris", value=FALSE)
	),

    mainPanel(
		h3('Exploratory Plots for the selected dataset'),
		plotOutput("widthPlot"),
		plotOutput("lengthPlot"),
		h3('Prediction Tree for the selected dataset'),
		plotOutput("classPlot")
	  
      )
    ))