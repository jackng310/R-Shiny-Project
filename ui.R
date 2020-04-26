

shinyUI(dashboardPage(skin = 'black',
  dashboardHeader(title = span("Value of an", 
                               span("NBA DRAFT PICK", 
                                    style = "color: red; font-size: 13px"))),
  dashboardSidebar(
    sidebarUserPanel("NBA Draft Data from 1989-2016"),
    sidebarMenu(
      menuItem(
        'Draft Production by Team',
        tabName = 'item1',
        icon = icon('angle-right')
      ),
      menuItem(
        'Draft Production by College',
        tabName = 'item2',
        icon = icon('angle-right')
      ),
      menuItem(
        'Value by Draft Position',
        tabName = 'item3',
        icon = icon('angle-right')
      ),
      menuItem(
        'Pick Value by Team',
        tabName = 'item4',
        icon = icon('angle-right')
      )
    ),
    selectizeInput(
      'selected',
      'Select Visualization:',
      choice = c('Dataset', 'Graph')
    ),
    selectizeInput(
      'selected1',
      'Sort by:',
      choice = c(
        'Value Over Replacement' = 'VORP',
        'Average Value Over Replacement' = 'avg_VORP',
        'DValue Over Replacement Differential' = 'vorp_diff'
      )
    ),
    selectizeInput(
      'selected2',
      'Filter by:',
      choice = c('All', 'Top 5', 'Top 10', 'Bottom 5', 'Bottom 10')
    )
  ),
  dashboardBody(tabItems(
    tabItem(
      tabName = 'item1', h1('DRAFT PRODUCTION BY TEAM',style="line-height: 0px;margin-top: 0;"),
      fluidRow(dataTableOutput('table1')),
      fluidPage(
        tags$style(type = "text/css", "#graph1 {height: calc(100vh - 80px) !important;}"),
        plotOutput('graph1'),
        height = '100%'
      ),
      
    ),
    tabItem(
      tabName = 'item2', h1('DRAFT PRODUCTION BY COLLEGE',style="line-height: 0px;margin-top: 0;"),
      fluidRow(dataTableOutput('table2')),
      fluidPage(
        tags$style(type = "text/css", "#graph2 {height: calc(100vh - 80px) !important;}"),
        plotOutput('graph2'),
        height = '100%'
      )
    ),
    tabItem(
      tabName = 'item3', h1('VALUE BY DRAFT POSITION',style="line-height: 0px;margin-top: 0;"),
      fluidRow(dataTableOutput('table3')),
      fluidPage(
        tags$style(type = "text/css", "#graph3 {height: calc(100vh - 80px) !important;}"),
        plotOutput('graph3'),
        height = '100%'
      )
    ),
    tabItem(
      tabName = 'item4', h1('PICK VALUE BY TEAM',style="line-height: 0px;margin-top: 0;"),
      fluidRow(dataTableOutput('table4')),
      fluidPage(
        tags$style(type = "text/css", "#graph4 {height: calc(100vh - 80px) !important;}"),
        plotOutput('graph4'),
        height = '100%'
      )
    )
    
    
  ))
))