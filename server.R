
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#


modelPlot<-function(variablePassed){
  
  if(variablePassed=="cyl"){
    return (qplot(am+cyl, mpg, data=mtcars, geom=c("point", "smooth"), 
                       method="lm", formula=y~x, color=cyl, 
                       main="Linear Regression Model", 
                       xlab="cyl", ylab="mpg"))
  }
  if(variablePassed=="disp"){
    return (qplot(am+disp, mpg, data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=disp, 
                 main="Linear Regression Model", 
                 xlab="disp", ylab="mpg"))
  }
  if(variablePassed=="hp"){
    return(qplot(am+hp, mpg, data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=hp, 
                 main="Linear Regression Model", 
                 xlab="hp", ylab="mpg"))
  }
  if(variablePassed=="drat"){
    return(qplot(am+drat, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=drat, 
                 main="Linear Regression Model", 
                 xlab="drat", ylab="mpg"))
  }
  if(variablePassed=="wt"){
    return(qplot(am+wt, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=wt, 
                 main="Linear Regression Model", 
                 xlab="wt", ylab="mpg"))
  }
  if(variablePassed=="qsec"){
    return(qplot(am+qsec, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=qsec, 
                 main="Linear Regression Model", 
                 xlab="qsec", ylab="mpg"))
  }
  if(variablePassed=="vs"){
    return(qplot(am+vs, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=vs, 
                 main="Linear Regression Model", 
                 xlab="vs", ylab="mpg"))
  }
  if(variablePassed=="gear"){
    return(qplot(am+gear, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=gear, 
                 main="Linear Regression Model", 
                 xlab="gear", ylab="mpg"))
  }
  if(variablePassed=="carb"){
    return(qplot(am+carb, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=carb, 
                 main="Linear Regression Model", 
                 xlab="carb", ylab="mpg"))
  }
  if(variablePassed=="am"){
    return(qplot(am, mpg,data=mtcars, geom=c("point", "smooth"), 
                 method="lm", formula=y~x, color=am, 
                 main="Linear Regression Model", 
                 xlab="am", ylab="mpg"))
  }
  return("")
}



fitModel<-function(variablePassed){
  
  if(variablePassed=="cyl"){
    temp<-lm(mpg~am+cyl,data=mtcars)
    return(temp)
  }
  if(variablePassed=="disp"){
    temp<-lm(mpg~am+disp,data=mtcars)
    return(temp)
  }
  if(variablePassed=="hp"){
    temp<-lm(mpg~am+hp,data=mtcars)
    return(temp)
  }
  if(variablePassed=="drat"){
    temp<-lm(mpg~am+drat,data=mtcars)
    return(temp)
  }
  if(variablePassed=="wt"){
    temp<-lm(mpg~am+wt,data=mtcars)
    return(temp)
  }
  if(variablePassed=="qsec"){
    temp<-lm(mpg~am+qsec,data=mtcars)
    return(temp)
  }
  if(variablePassed=="vs"){
    temp<-lm(mpg~am+vs,data=mtcars)
    return(temp)
  }
  if(variablePassed=="gear"){
    temp<-lm(mpg~am+gear,data=mtcars)
    return(temp)
  }
  if(variablePassed=="carb"){
    temp<-lm(mpg~am+carb,data=mtcars)
    return(temp)
  }
  if(variablePassed=="am"){
    temp<-lm(mpg~am,data=mtcars)
    return(temp)
  }
  return("")
}

library(shiny)
library(ggplot2)


shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- input$automanual
    y <- input$variable
    isolate(modelPlot(input$variable))
    #output$summaryVal<-
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })
  output$summaryval<-renderPrint({
    input$variable
    y<-input$variable
    isolate( summary(mtcars[input$variable]))
  })
  output$summarymtcarval<-renderPrint({
    input$variable
    y<-input$variable
    isolate( summary(fitModel(input$variable)))
  })
  
  output$selectedVals<-renderPrint({
    input$variable
    y<-input$variable
    paste("Selected Variables [ Transmission :=",input$automanual,"]"," [Selected Variable :=",input$variable," ]")
  })
})
