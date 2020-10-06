library(plotly)

auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")


fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Manufacturer,colors="Set2",
               mode = "markers",marker = list(size = 10)) %>%
       layout(xaxis = list(title = "Engine CC"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Year,colors="viridis",
               mode = "markers",marker = list(size = 10)) %>%
       layout(xaxis = list(title = "Engine CC"),
              yaxis = list(title = "Mileage Km/L"))


fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Fuel_Type, colors = "Set1",
               mode = "markers",marker = list(size = 7)) %>%
      layout(xaxis = list(title = "Engine CC"),
             yaxis = list(title = "Mileage Km/L"))


fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Power,
               type = "scatter",color = ~Year, colors="plasma",
               mode = "markers",marker = list(size = 7)) %>%
      layout(xaxis = list(title = "Power HP"),
             yaxis = list(title = "Mileage Km/L"))


fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Power,
               type = "scatter",color = ~Fuel_Type,colors="Dark2",
               mode = "markers",marker = list(size = 7)) %>%
       layout(xaxis = list(title = "Power HP"),
              yaxis = list(title = "Mileage Km/L"))


fig <- plot_ly(data = auto_data, y = ~Price, x=~Power,
               type = "scatter",color = ~Manufacturer,
               mode = "markers",marker = list(size = 10)) %>%
      layout(xaxis = list(title = "Power"),
             yaxis = list(title = "Price"))


fig <- plot_ly(data = auto_data, y = ~Price, x=~Power,
               type = "scatter",color = ~Year,colors="inferno",
               mode = "markers",marker = list(size = 10)) %>%
       layout(xaxis = list(title = "Power"),
              yaxis = list(title = "Price"))


fig <- plot_ly(data = auto_data, y = ~Price, x=~Power,
               type = "scatter",color = ~Fuel_Type ,colors="Dark2",
               mode = "markers") %>%
       layout(xaxis = list(title = "Power"),
              yaxis = list(title = "Price"))



fig
