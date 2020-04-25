
shinyUI(dashboardPage(
  dashboardHeader(title="Value of a Draft Pick"),
  dashboardSidebar(
    sidebarUserPanel("NBA Drafts"),
    sidebarMenu(
      menuItem('Draft Production by Team', tabName = 'item1', icon = icon('Draft Production by Team')),
      menuItem('Draft Production by College', tabName = 'item2', icon = icon('Draft Production by College')),
      menuItem('Value by Draft Position', tabName = 'item3', icon = icon('Value by Draft Position')),
      menuItem('Pick Value by Team', tabName = 'item4', icon = icon('Pick Value by Team'))
  ),
    selectizeInput('selected', 'Select Visualization:', choice = c('Graph', 'Dataset')),
    selectizeInput('selected1', 'Sort By:', choice = c('Value Over Replacement' = 'VORP', 'Average Value Over Replacement' = 'avg_VORP', 'Differential in Value Over Replacement' = 'vorp_diff'))
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = 'item1',
              fluidPage(dataTableOutput('table1')),
              fillPage(tags$style(type = "text/css", "#graph1 {height: calc(100vh - 80px) !important;}"),plotOutput('graph1'),height='100%'),
              
    ),
    tabItem(tabName = 'item2',
            fluidPage(dataTableOutput('table2')),
            fillPage(tags$style(type = "text/css", "#graph2 {height: calc(100vh - 80px) !important;}"),plotOutput('graph2'),height='100%')),
    tabItem(tabName = 'item3',
            fluidPage(dataTableOutput('table3')),
            fillPage(tags$style(type = "text/css", "#graph3 {height: calc(100vh - 80px) !important;}"),plotOutput('graph3'),height='100%')),
    tabItem(tabName = 'item4',
            fluidPage(dataTableOutput('table4')),
            fillPage(tags$style(type = "text/css", "#graph4 {height: calc(100vh - 80px) !important;}"),plotOutput('graph4'),height='100%'))
    
    
  )
)))