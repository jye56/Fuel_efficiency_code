library(shiny)

shinyUI(
  pageWithSidebar(
    
    headerPanel('Estimate automobile fuel efficiency by transmission type, weight, and 1/4 mile time'),
  
    sidebarPanel(
      radioButtons(inputId='am','Transmission type:',
               c('automatic'='0',
                 'manual'='1')), 
      sliderInput(inputId="num", "Gross weight (lb/1000)", value=1.8, min=1.5, max=5.5),
      sliderInput('qsec', '1/4 mile time (time in seconds to cover 1/4 miles of distance from still with maximal acceleration)', 15, min = 14, max=25, step=0.1)
      
    ),
  
    mainPanel(
      
      h3("The Estimated Fuel Efficiency (mpg):"),
      verbatimTextOutput('oprediction'),
      p("NOTE: The estimate is based on a model derived using stepwise regression starting from 10 different parameters; 3 most important parameters were selected out by the regression process."),
      h3('Values of parameters entered:'),
      h4('Transmission type:'),
      verbatimTextOutput('oam'),
      h4('Gross weight (lb/1000):'),
      verbatimTextOutput('oweight'),
      h4('1/4 mile time (sec):'),
      verbatimTextOutput('oqsec'),
      h2('How to use the estimator:'),
      p('The inputs should be entered into the left side of the page, including radio buttons for the type of transmission, sliders for both the gross weight of the vehicle and 1/4 mile time of the vehicle. After you give the appropriate inputs, the corresponding estimate of fuel efficiency will be displayed on the right hand side of the page.')
    )
  
  )
)


