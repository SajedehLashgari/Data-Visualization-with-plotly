library(plotly)

fig <- plot_ly(type = 'mesh3d',
               x = c(0, 0, 1, 1, 0, 0, 1, 1),
               y = c(0, 1, 1, 0, 0, 1, 1, 0),
               z = c(0, 0, 0, 0, 1, 1, 1, 1),
               i = c(7, 0, 0, 0, 4, 4, 6, 6, 4, 0, 3, 2),
               j = c(3, 4, 1, 2, 5, 6, 5, 2, 0, 1, 6, 3),
               k = c(0, 7, 2, 3, 6, 7, 1, 1, 5, 5, 7, 6),
               intensity = seq(0, 1, length = 8),
               color = seq(0, 1, length = 8),
               colors = colorRamp(rainbow(8))
)

fig