library(plotly)

auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")

fig <- plot_ly(x = auto_data$Manufacturer, type = "histogram")

fig

