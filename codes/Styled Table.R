library(plotly)

fig <- plot_ly(
  type = 'table',
  header = list(
    values = c('<b>EXPENSES</b>', '<b>Q1</b>','<b>Q2</b>','<b>Q3</b>','<b>Q4</b>'),
    line = list(color = '#506784'),
    fill = list(color = '#119DFF'),
    align = c('left','center'),
    font = list(color = 'white', size = 12)
  ),
  cells = list(
    values = rbind(
      c('Salaries', 'Office', 'Merchandise', 'Legal', '<b>TOTAL</b>'),
      c(1200000, 20000, 80000, 2000, 1212000),
      c(1300000, 20000, 70000, 2000, 1392000),
      c(1300000, 20000, 120000, 2000, 1442000),
      c(1400000, 20000, 90000, 2000, 1412000)),
    line = list(color = '#506784'),
    fill = list(color = c('#25FEFD', 'white')),
    align = c('left', 'center'),
    font = list(color = c('#506784'), size = 12)
  ))

fig