library(plotly)

df <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/iris-data.csv')
pl_colorscale=list(c(0.0, '#19d3f3'),
                   c(0.333, '#19d3f3'),
                   c(0.333, '#e763fa'),
                   c(0.666, '#e763fa'),
                   c(0.666, '#636efa'),
                   c(1, '#636efa'))
axis = list(showline=FALSE,
            zeroline=FALSE,
            gridcolor='#ffff',
            ticklen=4)

fig <- df %>%
  plot_ly() 
fig <- fig %>%
  add_trace(
    type = 'splom',
    dimensions = list(
      list(label='sepal length', values=~sepal.length),
      list(label='sepal width', values=~sepal.width),
      list(label='petal length', values=~petal.length),
      list(label='petal width', values=~petal.width)
    ),
    text=~class,
    marker = list(
      color = as.integer(df$class),
      colorscale = pl_colorscale,
      size = 7,
      line = list(
        width = 1,
        color = 'rgb(230,230,230)'
      )
    )
  ) 
fig <- fig %>%
  layout(
    title= 'Iris Data set',
    hovermode='closest',
    dragmode= 'select',
    plot_bgcolor='rgba(240,240,240, 0.95)',
    xaxis=list(domain=NULL, showline=F, zeroline=F, gridcolor='#ffff', ticklen=4),
    yaxis=list(domain=NULL, showline=F, zeroline=F, gridcolor='#ffff', ticklen=4),
    xaxis2=axis,
    xaxis3=axis,
    xaxis4=axis,
    yaxis2=axis,
    yaxis3=axis,
    yaxis4=axis
  )

fig