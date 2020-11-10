library(plotly)

df <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/hobbs-pearson-trials.csv")

fig <- plot_ly(
  type = 'scatterpolargl',
  mode = 'markers'
)

j = 1
k = 2
for (i in 1:(length(df)/2)){
  fig <- add_trace(
    fig,
    r = df[,j],
    theta = df[,k],
    name = paste('Trial ', i),
    marker = list(
      size = 15,
      line = list(
        color = '#FFF'
      ),
      opacity = 0.7
    )
  )
  j <- j + 2
  k <- k + 2
}

fig <- layout(
  fig,
  title = "Hobbs-Pearson Trials",
  showlegend = F,
  paper_bgcolor = "rgb(223, 223, 223)",
  polar = list(
    bgcolor = "rgb(223, 223, 223)",
    angularaxis = list(
      tickwidth = 2,
      linewidth = 3,
      layer = 'below traces'
    ),
    radialaxis = list(
      side = 'counterclockwise',
      showline = T,
      linewidth = 2,
      tickwidth = 2,
      gridcolor = '#FFF',
      gridwidth = 2
    )
  )
)

fig