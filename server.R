library(shiny)


shinyServer(
  
  function(input, output) {
    output$oam<-renderPrint({
      if (input$am =="0"){
        oam <-"automatic"
      } else {
        oam <-"mannual"
      }
      
      oam
    })
    output$oweight<-renderPrint({input$num})
    output$oqsec<-renderPrint({input$qsec})

    output$oprediction<- renderPrint({
        if (input$am =="0"){
          mpg <-(-3.916504*input$num + 1.225886*input$qsec)
        } else {
          mpg <-(-3.916504*input$num + 1.225886*input$qsec+ 2.935837)
        }
        
        mpg
    })
      
  }
)


