library(plotly)

y1 <- c(0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5, 7.75, 8.15,
        8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5, 12, 16, 20.90, 22.3, 23.25)
y2 <- c(0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5, 7.75, 8.15,
        8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5, 12, 16, 20.90, 22.3, 23.25)
y3 <- c(0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5, 7.75, 8.15,
        8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5, 12, 16, 20.90, 22.3, 23.25)
y4 <- c(0.75, 5.25, 5.5, 6, 6.2, 6.6, 6.80, 7.0, 7.2, 7.5, 7.5, 7.75, 8.15,
        8.15, 8.65, 8.93, 9.2, 9.5, 10, 10.25, 11.5, 12, 16, 20.90, 22.3, 23.25)

fig <- plot_ly(type = 'box')
fig <- fig %>% add_boxplot(y = y1, jitter = 0.3, pointpos = -1.8, boxpoints = 'all',
                           marker = list(color = 'rgb(7,40,89)'),
                           line = list(color = 'rgb(7,40,89)'),
                           name = "All Points")
fig <- fig %>% add_boxplot(y = y2, name = "Only Whiskers", boxpoints = FALSE,
                           marker = list(color = 'rgb(9,56,125)'),
                           line = list(color = 'rgb(9,56,125)'))
fig <- fig %>% add_boxplot(y = y3, name = "Suspected Outlier", boxpoints = 'suspectedoutliers',
                           marker = list(color = 'rgb(8,81,156)',
                                         outliercolor = 'rgba(219, 64, 82, 0.6)',
                                         line = list(outliercolor = 'rgba(219, 64, 82, 1.0)',
                                                     outlierwidth = 2)),
                           line = list(color = 'rgb(8,81,156)'))
fig <- fig %>% add_boxplot(y = y4, name = "Whiskers and Outliers", boxpoints = 'outliers',
                           marker = list(color = 'rgb(107,174,214)'),
                           line = list(color = 'rgb(107,174,214)'))
fig <- fig %>% layout(title = "Box Plot Styling Outliers")

fig
