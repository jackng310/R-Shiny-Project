

shinyServer(function(input, output) {
  output$table1 = renderDataTable({
    if (input$selected == 'Dataset') {
    datatable(team_VORP, rownames = F) %>%
        formatStyle(input$selected1, background = 'skyblue', fontWeight = 'bold')
      if (input$selected1 == 'vorp_diff') {
        team_VORP %>%
          arrange(desc(vorp_diff))
      }
      else if (input$selected1 == 'VORP') {
        team_VORP %>%
          arrange(desc(VORP))
      }
      else if (input$selected1 == 'avg_VORP') {
        team_VORP %>%
          arrange(desc(avg_VORP))
      }
    }
    
    
      
  })
  
  output$table2 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(college_VORP, rownames = F) %>%
        formatStyle(input$selected1, background = 'skyblue', fontWeight = 'bold')
      if (input$selected1 == 'vorp_diff') {
        college_VORP %>%
          arrange(desc(vorp_diff))
      }
      else if (input$selected1 == 'VORP') {
        college_VORP %>%
          arrange(desc(VORP))
      }
      else if (input$selected1 == 'avg_VORP') {
        college_VORP %>%
          arrange(desc(avg_VORP))
      }
    }
    
    
    
  })
  
  output$table3 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(pick_VORP, rownames = F) %>%
        formatStyle(input$selected1, background = 'skyblue', fontWeight = 'bold')
      if (input$selected1 == 'vorp_diff') {
        pick_VORP %>%
          arrange(desc(vorp_diff))
      }
      else if (input$selected1 == 'VORP') {
        pick_VORP %>%
          arrange(desc(VORP))
      }
      else if (input$selected1 == 'avg_VORP') {
        pick_VORP %>%
          arrange(desc(avg_VORP))
      }
    }
    
    
    
  })
  
  output$table4 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(pick_by_team, rownames = F) %>%
        formatStyle(input$selected1, background = 'skyblue', fontWeight = 'bold')
      if (input$selected1 == 'vorp_diff') {
        pick_by_team %>%
          arrange(desc(vorp_diff))
      }
      else if (input$selected1 == 'VORP') {
        pick_by_team %>%
          arrange(desc(VORP))
      }
      else if (input$selected1 == 'avg_VORP') {
        pick_by_team %>%
          arrange(desc(avg_VORP))
      }
    }
    
    
    
  })
  output$graph1 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        ggplot(team_VORP, aes(x = team, y = vorp_diff)) + geom_col(aes(fill = team)) + coord_flip() + ggtitle("Differential in Value based on Expected VORP by Team")
      }
      else if (input$selected1 == 'VORP') {
        ggplot(team_VORP, aes(x = team, y = VORP)) + geom_col(aes(fill = team)) + coord_flip() + ggtitle("Draft Production by Team")
      }
      else if (input$selected1 == 'avg_VORP') {
        ggplot(team_VORP, aes(x = team, y = avg_VORP)) + geom_col(aes(fill = team)) + coord_flip() + ggtitle("Average Draft Production by Team")
      } 
        }  
      })
  
  output$graph2 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        ggplot(college_VORP, aes(x = college, y = vorp_diff)) + geom_col(aes(fill = college)) + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by College')
      }
      else if (input$selected1 == 'VORP') {
        ggplot(college_VORP, aes(x = college, y = VORP)) + geom_col(aes(fill = college)) + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Value put out by College')
      }
      else if (input$selected1 == 'avg_VORP') {
        ggplot(college_VORP, aes(x = college, y = avg_VORP)) + geom_col(aes(fill = college)) + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Average Value put out by College')
      } 
    }  
  })
  
  output$graph3 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        ggplot(pick_VORP, aes(x = pick, y = vorp_diff)) + geom_point() + geom_text(aes(label=pick), hjust = -.2, vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by Draft Pick')
      }
      else if (input$selected1 == 'VORP') {
        ggplot(pick_VORP, aes(x = pick, y = VORP)) + geom_point() + geom_text(aes(label=pick), hjust = -.2, vjust = -.2) +  theme(legend.position = 'bottom') + ggtitle('Production by Draft Pick')
      }
      else if (input$selected1 == 'avg_VORP') {
        ggplot(pick_VORP, aes(x = pick, y = avg_VORP)) + geom_point() + geom_text(aes(label=pick), hjust = -.2, vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Average Production by Draft Pick')
      } 
    }  
  })
  
  output$graph4 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        ggplot(pick_by_team, aes(x = pick, y = vorp_diff)) + geom_point(aes(color = team)) + geom_text(aes(label = team)) + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by Teams at certain Draft Positions')
      }
      else if (input$selected1 == 'VORP') {
        ggplot(pick_by_team, aes(x = pick, y = VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = team)) + theme(legend.position = 'bottom') + ggtitle('Production by Teams at certain Draft Picks')
        }
      else if (input$selected1 == 'avg_VORP') {
        ggplot(pick_by_team, aes(x = pick, y = avg_VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = team)) + theme(legend.position = 'bottom') + ggtitle('Average Producton by Teams at certain Draft Picks')
      } 
    }  
  })
})

?renderPlot



