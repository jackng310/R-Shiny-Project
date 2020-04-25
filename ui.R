
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
    selectizeInput('selected1', 'Sort By:', choice = c('VORP', 'avg_VORP', 'vorp_diff'))
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = 'item1',
              fluidPage(dataTableOutput('table1')),
              fluidPage(plotOutput('graph1')),
              
    ),
    tabItem(tabName = 'item2',
            fluidPage(dataTableOutput('table2')),
            fluidPage(plotOutput('graph2'))),
    tabItem(tabName = 'item3',
            fluidPage(dataTableOutput('table3')),
            fluidPage(plotOutput('graph3'))),
    tabItem(tabName = 'item4',
            fluidPage(dataTableOutput('table4')),
            fluidPage(plotOutput('graph4')))
    
    
  )
)))