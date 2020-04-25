library(shiny)
library(shinydashboard)
library(DT)
setwd("/Applications/NYCDSA/r_shiny_proj")
library(tidyverse)
library(ggplot2)
library(teamcolors)



drafts = read.csv('NBA Drafts.csv', stringsAsFactors = T, na.strings=c("","NA"))

drafts = drafts %>%
  mutate(College = ifelse(is.na(College), 'N/A', as.character(College)))



drafts[is.na(drafts)] = 0

names(drafts) = tolower(names(drafts))

drafts = rename(drafts, `fg%` = fg.)
drafts = rename(drafts, draft_year = draft.year)
drafts = rename(drafts, `3p%` = x3p.)
drafts = rename(drafts, `ft%` = ft.)
drafts = rename(drafts, `avg_mp` = minuts.played)
drafts = rename(drafts, avg_pts = points)
drafts = rename(drafts, `avg_reb` = total.rebounds)
drafts = rename(drafts, avg_ast = assists)
drafts = rename(drafts, ws = win.share)
drafts = rename(drafts, `ws/48` = win.sharess.48)
drafts = rename(drafts, bpm = box.plus.minus)
drafts = rename(drafts, vorp = value.over.replacement)

drafts = drafts %>%
  mutate(lottery = ifelse(draft_year < 1995 & pick <= 11, 'lottery', ifelse(draft_year < 2004 & draft_year >= 1995 & pick <= 13, 'lottery', ifelse(draft_year >= 2004 & pick <= 14, 'lottery', 'general'))))


drafts = drafts %>%
  mutate(avg_ws = ws/yrs, avg_vorp = vorp/yrs, `ws+vorp`= avg_ws + avg_vorp, expected_vorp = (21.930875 - 5.414771 * log(pick)), vorp_diff = vorp - expected_vorp)

pick_VORP = drafts %>% group_by(pick) %>%
  summarise(total_picks = n(), VORP = round(sum(vorp),2), avg_VORP = round((VORP/n()), 2), expected_vorp = round(sum(expected_vorp), 2), vorp_diff = round((VORP - expected_vorp),2))

college_VORP = drafts %>% group_by(college) %>%
  summarise(total_picks = n(), VORP = round(sum(vorp),2), avg_VORP = round((VORP/n()), 2), expected_vorp = round(sum(expected_vorp), 2), vorp_diff = round((VORP - expected_vorp),2)) %>%
  filter(total_picks >= 7)

team_VORP = drafts %>% group_by(team) %>%
  summarise(total_picks = n(), VORP = round(sum(vorp),2), avg_VORP = round((VORP/n()), 2), expected_vorp = round(sum(expected_vorp), 2), vorp_diff = round((VORP - expected_vorp),2))

lottery_VORP = drafts %>% group_by(lottery) %>%
  summarise(total_picks = n(), VORP = round(sum(vorp),2), avg_VORP = round((VORP/n()), 2), expected_vorp = round(sum(expected_vorp), 2), vorp_diff = round((VORP - expected_vorp),2))

pick_by_team = drafts %>% group_by(team, pick) %>%
  summarise(total_picks = n(), VORP = round(sum(vorp),2), avg_VORP = round((VORP/n()), 2), expected_vorp = round(sum(expected_vorp), 2), vorp_diff = round((VORP - expected_vorp),2)) %>%
  filter(total_picks > 1)





?round


