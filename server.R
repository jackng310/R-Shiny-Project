


shinyServer(function(input, output) {
  output$table1 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(team_VORP, rownames = F, style = 'bootstrap')

      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          team_VORP %>%
            arrange(desc(vorp_diff)) %>%

            top_n(10, vorp_diff) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          team_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(5, vorp_diff) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          team_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-10, vorp_diff) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          team_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-5, vorp_diff) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          team_VORP %>%
            arrange(desc(vorp_diff)) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          team_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(10, VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          team_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(5, VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          team_VORP %>%
            arrange(VORP) %>%
            top_n(-10, VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          team_VORP %>%
            arrange(VORP) %>%
            top_n(-5, VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          team_VORP %>%
            arrange(desc(VORP)) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          team_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(10, avg_VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          team_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(5, avg_VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          team_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-10, VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          team_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-5, VORP) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          team_VORP %>%
            arrange(desc(avg_VORP)) %>% rename("Team" = team, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
    }
    
    
    
  })
  
  
  
  output$table2 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(college_VORP, rownames = F, style = 'bootstrap')
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          college_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(10, vorp_diff) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          college_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(5, vorp_diff) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          college_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-10, vorp_diff) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          college_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-5, vorp_diff) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          college_VORP %>%
            arrange(desc(vorp_diff)) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          college_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(10, VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          college_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(5, VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          college_VORP %>%
            arrange(VORP) %>%
            top_n(-10, VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          college_VORP %>%
            arrange(VORP) %>%
            top_n(-5, VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          college_VORP %>%
            arrange(desc(VORP)) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          college_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(10, avg_VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          college_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(5, avg_VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        } 
        else if (input$selected2 == 'Bottom 10') {
          college_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-10, VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          college_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-5, VORP) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          college_VORP %>%
            arrange(desc(avg_VORP)) %>% rename("College" = college, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
    }
    
    
    
  })
  
  output$table3 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(pick_VORP, rownames = F, style = 'bootstrap')
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          pick_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(10, vorp_diff) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(5, vorp_diff) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-10, vorp_diff) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-5, vorp_diff) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          pick_VORP %>%
            arrange(desc(vorp_diff)) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          pick_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(10, VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(5, VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_VORP %>%
            arrange(VORP) %>%
            top_n(-10, VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_VORP %>%
            arrange(VORP) %>%
            top_n(-5, VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          pick_VORP %>%
            arrange(desc(VORP)) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          pick_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(10, avg_VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(5, avg_VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-10, VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-5, VORP) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          pick_VORP %>%
            arrange(desc(avg_VORP)) %>% rename("Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
    }
    
    
    
  })
  
  
  
  output$table4 = renderDataTable({
    if (input$selected == 'Dataset') {
      datatable(pick_by_team, rownames = F, style = 'bootstrap')
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          pick_by_team %>%
            arrange(desc(vorp_diff)) %>%
            head(10) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_by_team %>%
            arrange(desc(vorp_diff)) %>%
            head(5) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_by_team %>%
            arrange(vorp_diff) %>%
            head(10) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_by_team %>%
            arrange(vorp_diff) %>%
            head(5) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          pick_by_team %>%
            arrange(desc(vorp_diff)) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          pick_by_team %>%
            arrange(desc(VORP)) %>%
            head(10) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_by_team %>%
            arrange(desc(VORP)) %>%
            head(5) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_by_team %>%
            arrange(VORP) %>%
            head(10) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_by_team %>%
            arrange(VORP) %>%
            head(5) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          pick_by_team %>%
            arrange(desc(VORP)) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          pick_by_team %>%
            arrange(desc(avg_VORP)) %>%
            head(10) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_by_team %>%
            arrange(desc(avg_VORP)) %>%
            head(5) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_by_team %>%
            arrange(avg_VORP) %>%
            head(10) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_by_team %>%
            arrange(avg_VORP) %>%
            head(5) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
        else if (input$selected2 == 'All') {
          pick_by_team %>%
            arrange(desc(avg_VORP)) %>% rename("Team" = team, "Pick" = pick, "Total Picks" = total_picks, "Value Over Replacement" = VORP, "Avergae Value Over Replacement" = avg_VORP, "Expected Value Over Replacement" = expected_vorp, "Value Over Replacement Differential" = vorp_diff)
        }
      }
    }
    
    
    
  })
  
  
  output$graph1 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          team_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(10, vorp_diff) %>% ggplot(aes(x = team, y = vorp_diff)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement Differential") + coord_flip() + ggtitle("Differential in Value based on Expected VORP by Team")
          
        }
        else if (input$selected2 == 'Top 5') {
          team_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(5, vorp_diff) %>% ggplot(aes(x = team, y = vorp_diff)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement Differential") + coord_flip() + ggtitle("Difference in Value based on Expected VORP by Team")
        }
        else if (input$selected2 == 'Bottom 10') {
          team_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-10, vorp_diff) %>% ggplot(aes(x = team, y = vorp_diff)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement Differential") + coord_flip() + ggtitle("Difference in Value based on Expected VORP by Team")
        }
        else if (input$selected2 == 'Bottom 5') {
          team_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-5, vorp_diff) %>% ggplot(aes(x = team, y = vorp_diff)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement Differential") + coord_flip() + ggtitle("Differential in Value based on Expected VORP by Team")
        }
        else if (input$selected2 == 'All') {
          team_VORP %>%
            arrange(desc(vorp_diff)) %>% ggplot(aes(x = team, y = vorp_diff)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement Differential") + coord_flip() + ggtitle("Differential in Value based on Expected VORP by Team")
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          team_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(10, VORP) %>% ggplot(aes(x = team, y = VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement") + coord_flip() + ggtitle("Draft Production by Team")
          
        }
        else if (input$selected2 == 'Top 5') {
          team_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(5, VORP) %>% ggplot(aes(x = team, y = VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement") + coord_flip() + ggtitle("Draft Production by Team")
        }
        else if (input$selected2 == 'Bottom 10') {
          team_VORP %>%
            arrange(VORP) %>%
            top_n(-10, VORP) %>% ggplot(aes(x = team, y = VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement") + coord_flip() + ggtitle("Draft Production by Team")
        }
        else if (input$selected2 == 'Bottom 5') {
          team_VORP %>%
            arrange(VORP) %>%
            top_n(-5, VORP) %>% ggplot(aes(x = team, y = VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement") + coord_flip() + ggtitle("Draft Production by Team")
        }
        else if (input$selected2 == 'All') {
          team_VORP %>%
            arrange(desc(VORP)) %>% ggplot(aes(x = team, y = VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Value Over Replacement") + coord_flip() + ggtitle("Draft Production by Team")
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          team_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(10, avg_VORP) %>% ggplot(aes(x = team, y = avg_VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Average Value Over Replacement") + coord_flip() + ggtitle("Average Draft Production by Team")
          
        }
        else if (input$selected2 == 'Top 5') {
          team_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(5, avg_VORP) %>% ggplot(aes(x = team, y = avg_VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Average Value Over Replacement") + coord_flip() + ggtitle("Average Draft Production by Team")
        }
        else if (input$selected2 == 'Bottom 10') {
          team_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-10, VORP) %>% ggplot(aes(x = team, y = avg_VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Average Value Over Replacement") + coord_flip() + ggtitle("Average Draft Production by Team")
        }
        else if (input$selected2 == 'Bottom 5') {
          team_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-5, VORP) %>% ggplot(aes(x = team, y = avg_VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Average Value Over Replacement") + coord_flip() + ggtitle("Average Draft Production by Team")
        }
        else if (input$selected2 == 'All') {
          team_VORP %>%
            arrange(desc(avg_VORP)) %>% ggplot(aes(x = team, y = avg_VORP)) + geom_col(aes(fill = team)) + xlab("Team") + ylab("Average Value Over Replacement") + coord_flip() + ggtitle("Average Draft Production by Team")
        }
      }
    }
  })
  
  output$graph2 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          college_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(10, vorp_diff) %>% ggplot(aes(x = college, y = vorp_diff)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement Differential") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by College')
          
        }
        else if (input$selected2 == 'Top 5') {
          college_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(5, vorp_diff) %>% ggplot(aes(x = college, y = vorp_diff)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement Differential") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by College')
        }
        else if (input$selected2 == 'Bottom 10') {
          college_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-10, vorp_diff) %>% ggplot(aes(x = college, y = vorp_diff)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement Differential") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by College')
        }
        else if (input$selected2 == 'Bottom 5') {
          college_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-5, vorp_diff) %>% ggplot(aes(x = college, y = vorp_diff)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement Differential") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by College')
        }
        else if (input$selected2 == 'All') {
          college_VORP %>%
            arrange(desc(vorp_diff)) %>% ggplot(aes(x = college, y = vorp_diff)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement Differential") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by College')
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          college_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(10, VORP) %>% ggplot(aes(x = college, y = VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Value put out by College')
          
        }
        else if (input$selected2 == 'Top 5') {
          college_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(5, VORP) %>% ggplot(aes(x = college, y = VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Value put out by College')
        }
        else if (input$selected2 == 'Bottom 10') {
          college_VORP %>%
            arrange(VORP) %>%
            top_n(-10, VORP) %>% ggplot(aes(x = college, y = VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Value put out by College')
        }
        else if (input$selected2 == 'Bottom 5') {
          college_VORP %>%
            arrange(VORP) %>%
            top_n(-5, VORP) %>% ggplot(aes(x = college, y = VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Value put out by College')
        }
        else if (input$selected2 == 'All') {
          college_VORP %>%
            arrange(desc(VORP)) %>% ggplot(aes(x = college, y = VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Value put out by College')
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          college_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(10, avg_VORP) %>% ggplot(aes(x = college, y = avg_VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Average Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Average Value put out by College')
          
        }
        else if (input$selected2 == 'Top 5') {
          college_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(5, avg_VORP) %>% ggplot(aes(x = college, y = avg_VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Average Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Average Value put out by College')
        }
        else if (input$selected2 == 'Bottom 10') {
          college_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-10, VORP) %>% ggplot(aes(x = college, y = avg_VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Average Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Average Value put out by College')
        }
        else if (input$selected2 == 'Bottom 5') {
          college_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-5, VORP) %>% ggplot(aes(x = college, y = avg_VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Average Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Average Value put out by College')
        }
        else if (input$selected2 == 'All') {
          college_VORP %>%
            arrange(desc(avg_VORP)) %>% ggplot(aes(x = college, y = avg_VORP)) + geom_col(aes(fill = college)) + xlab("College") + ylab("Average Value Over Replacement") + coord_flip() + theme(legend.position = 'bottom') + ggtitle('Average Value put out by College')
        }
      }
    }
  })
  
  output$graph3 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          pick_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(10, vorp_diff) %>%  ggplot(aes(x = pick, y = vorp_diff)) + geom_point() + geom_text(aes(label =
                                                                                                            pick),
                                                                                                      hjust = -.2,
                                                                                                      vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Difference in Value based on Expected VORP by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement Differential")
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_VORP %>%
            arrange(desc(vorp_diff)) %>%
            top_n(5, vorp_diff) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point() + geom_text(aes(label =
                                                                                                          pick),
                                                                                                    hjust = -.2,
                                                                                                    vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-10, vorp_diff) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point() + geom_text(aes(label =
                                                                                                            pick),
                                                                                                      hjust = -.2,
                                                                                                      vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_VORP %>%
            arrange(vorp_diff) %>%
            top_n(-5, vorp_diff) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point() + geom_text(aes(label =
                                                                                                           pick),
                                                                                                     hjust = -.2,
                                                                                                     vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
        else if (input$selected2 == 'All') {
          pick_VORP %>%
            arrange(desc(vorp_diff)) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point() + geom_text(aes(label =
                                                                                                               pick),
                                                                                                         hjust = -.2,
                                                                                                         vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Differential in Value based on Expected VORP by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          pick_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(10, VORP) %>% ggplot(aes(x = pick, y = VORP)) + geom_point() + geom_text(aes(label =
                                                                                                 pick),
                                                                                           hjust = -.2,
                                                                                           vjust = -.2) +  theme(legend.position = 'bottom') + ggtitle('Production by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement")
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_VORP %>%
            arrange(desc(VORP)) %>%
            top_n(5, VORP) %>% ggplot(aes(x = pick, y = VORP)) + geom_point() + geom_text(aes(label =
                                                                                                pick),
                                                                                          hjust = -.2,
                                                                                          vjust = -.2) +  theme(legend.position = 'bottom') + ggtitle('Production by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_VORP %>%
            arrange(VORP) %>%
            top_n(-10, VORP) %>% ggplot(aes(x = pick, y = VORP)) + geom_point() + geom_text(aes(label =
                                                                                                  pick),
                                                                                            hjust = -.2,
                                                                                            vjust = -.2) +  theme(legend.position = 'bottom') + ggtitle('Production by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_VORP %>%
            arrange(VORP) %>%
            top_n(-5, VORP) %>% ggplot(aes(x = pick, y = VORP)) + geom_point() + geom_text(aes(label =
                                                                                                 pick),
                                                                                           hjust = -.2,
                                                                                           vjust = -.2) +  theme(legend.position = 'bottom') + ggtitle('Production by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement")
        }
        else if (input$selected2 == 'All') {
          pick_VORP %>%
            arrange(desc(VORP)) %>% ggplot(aes(x = pick, y = VORP)) + geom_point() + geom_text(aes(label =
                                                                                                     pick),
                                                                                               hjust = -.2,
                                                                                               vjust = -.2) +  theme(legend.position = 'bottom') + ggtitle('Production by Draft Pick') + xlab("Pick") + ylab("Value Over Replacement")
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          pick_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(10, avg_VORP) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point() + geom_text(aes(label =
                                                                                                         pick),
                                                                                                   hjust = -.2,
                                                                                                   vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Average Production by Draft Pick') + xlab("Pick") + ylab("Average Value Over Replacement")
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_VORP %>%
            arrange(desc(avg_VORP)) %>%
            top_n(5, avg_VORP) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point() + geom_text(aes(label =
                                                                                                        pick),
                                                                                                  hjust = -.2,
                                                                                                  vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Average Production by Draft Pick') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-10, VORP) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point() + geom_text(aes(label =
                                                                                                      pick),
                                                                                                hjust = -.2,
                                                                                                vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Average Production by Draft Pick') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_VORP %>%
            arrange(avg_VORP) %>%
            top_n(-5, VORP) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point() + geom_text(aes(label =
                                                                                                     pick),
                                                                                               hjust = -.2,
                                                                                               vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Average Production by Draft Pick') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
        else if (input$selected2 == 'All') {
          pick_VORP %>%
            arrange(desc(avg_VORP)) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point() + geom_text(aes(label =
                                                                                                             pick),
                                                                                                       hjust = -.2,
                                                                                                       vjust = -.2) + theme(legend.position = 'bottom') + ggtitle('Average Production by Draft Pick') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
      }
    }
  })
  
  output$graph4 = renderPlot({
    if (input$selected == 'Graph') {
      if (input$selected1 == 'vorp_diff') {
        if (input$selected2 == 'Top 10') {
          pick_by_team %>%
            arrange(desc(vorp_diff)) %>%
            head(10) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle(
              'Differential in Value based on Expected VORP by Teams at certain Draft Positions'
            ) + xlab("Pick") + ylab("Value Over Replacement Differential")
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_by_team %>%
            arrange(desc(vorp_diff)) %>%
            head(5) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle(
              'Differential in Value based on Expected VORP by Teams at certain Draft Positions'
            ) + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_by_team %>%
            arrange(vorp_diff) %>%
            head(10) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle(
              'Differential in Value based on Expected VORP by Teams at certain Draft Positions'
            ) + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_by_team %>%
            arrange(vorp_diff) %>%
            head(5) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle(
              'Differential in Value based on Expected VORP by Teams at certain Draft Positions'
            ) + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
        else if (input$selected2 == 'All') {
          pick_by_team %>%
            arrange(desc(vorp_diff)) %>% ggplot(aes(x = pick, y = vorp_diff)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle(
              'Differential in Value based on Expected VORP by Teams at certain Draft Positions'
            ) + xlab("Pick") + ylab("Value Over Replacement Differential")
        }
      }
      else if (input$selected1 == 'VORP') {
        if (input$selected2 == 'Top 10') {
          pick_by_team %>%
            arrange(desc(VORP)) %>%
            head(10) %>% ggplot(aes(x = pick, y = VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Production by Teams at certain Draft Picks') + xlab("Pick") + ylab("Value Over Replacement")
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_by_team %>%
            arrange(desc(VORP)) %>%
            head(5) %>% ggplot(aes(x = pick, y = VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Production by Teams at certain Draft Picks') + xlab("Pick") + ylab("Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_by_team %>%
            arrange(VORP) %>%
            head(10) %>% ggplot(aes(x = pick, y = VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Production by Teams at certain Draft Picks') + xlab("Pick") + ylab("Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_by_team %>%
            arrange(VORP) %>%
            head(5) %>% ggplot(aes(x = pick, y = VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Production by Teams at certain Draft Picks') + xlab("Pick") + ylab("Value Over Replacement")
        }
        else if (input$selected2 == 'All') {
          pick_by_team %>%
            arrange(desc(VORP)) %>% ggplot(aes(x = pick, y = VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Production by Teams at certain Draft Picks') + xlab("Pick") + ylab("Value Over Replacement")
        }
      }
      else if (input$selected1 == 'avg_VORP') {
        if (input$selected2 == 'Top 10') {
          pick_by_team %>%
            arrange(desc(avg_VORP)) %>%
            head(10) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Average Producton by Teams at certain Draft Picks') + xlab("Pick") + ylab("Average Value Over Replacement")
          
        }
        else if (input$selected2 == 'Top 5') {
          pick_by_team %>%
            arrange(desc(avg_VORP)) %>%
            head(5) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Average Producton by Teams at certain Draft Picks') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 10') {
          pick_by_team %>%
            arrange(avg_VORP) %>%
            head(10) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Average Producton by Teams at certain Draft Picks') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
        else if (input$selected2 == 'Bottom 5') {
          pick_by_team %>%
            arrange(avg_VORP) %>%
            head(5) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Average Producton by Teams at certain Draft Picks') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
        else if (input$selected2 == 'All') {
          pick_by_team %>%
            arrange(desc(avg_VORP)) %>% ggplot(aes(x = pick, y = avg_VORP)) + geom_point(aes(color = team)) + geom_text(aes(label = paste(team, ",", pick))) + theme(legend.position = 'bottom') + ggtitle('Average Producton by Teams at certain Draft Picks') + xlab("Pick") + ylab("Average Value Over Replacement")
        }
      }
    }
  })
})
