library(shiny) # Load libraries we will be using
data(iris)
library(ggplot2)
library(caret)
library(rattle)

set.seed(100)

inTrain<<-createDataPartition(iris$Species,p=.7,list=F)
training<<-iris[inTrain,]
testing<<-iris[-inTrain,]
modFit<<-train(Species~.,method="rpart",data=training)

shinyServer(function(input, output) {

		
	output$widthPlot <- renderPlot({
		if(input$iris==T) {
			qplot(Petal.Width,Sepal.Width,colour=Species,data=iris)
		} else {
		
		}
  })	

	output$lengthPlot <- renderPlot({
		if(input$iris==T) {
			qplot(Petal.Length,Sepal.Length,colour=Species,data=iris)
		} else {
		
		}
  })	

  output$classPlot <- renderPlot({
		if(input$iris==T) {
			fancyRpartPlot(modFit$finalModel)
		} else {
		
		}
  })	
  
})