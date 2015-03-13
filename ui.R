library(shinydashboard)

sidebar <-
  dashboardSidebar(
    div(class = "shiny-input-container", uiOutput("searchText")),
    sidebarMenuOutput("menu")
  )  

body <-
  dashboardBody(
    fluidPage(
      tagList(
        tags$head(
          #tags$link(rel="stylesheet", type="text/css",href="style.css"),
          tags$script(type="text/javascript", src = "md5.js"),
          tags$script(type="text/javascript", src = "passwdInputBinding.js")
        )
      ),     
      div(class = "login", uiOutput("uiLogin"), textOutput("pass"))
    ),
    
    fluidPage(uiOutput("obs"), plotOutput("distPlot"))
  )  

dashboardPage(
  dashboardHeader(title="basic page"),
  sidebar,
  body
)
