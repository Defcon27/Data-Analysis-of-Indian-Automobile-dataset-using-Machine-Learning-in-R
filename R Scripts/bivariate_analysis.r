library(plotly)

auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")



fig <- plot_ly(y = auto_data$Mileage.Km.L, x=auto_data$Engine.CC,
               marker = list(line = list(width = 1))) %>%
        layout(xaxis = list(title = "Engine CC"),
               yaxis = list(title = "Mileage Km/L"))


fig <- plot_ly(y = auto_data$Mileage.Km.L, x=auto_data$Power,
               marker = list(color="#e2594e")) %>%
       layout(xaxis = list(title = "Power Hp"),
              yaxis = list(title = "Mileage Km/L"))


fig <- plot_ly(y = auto_data$Price, x=auto_data$Year,
               marker = list(color="rgba(0,205,149, 1)")) %>%
      layout(xaxis = list(title = "Year"),
             yaxis = list(title = "Price"))

fig <- plot_ly(y = auto_data$Kilometers_Driven, x=auto_data$Year,ttype="scatter",
               marker = list(color="#8b0d86")) %>%
       layout(xaxis = list(title = "Year"),
              yaxis = list(title = "Distance Driven"))


fig <- plot_ly(y = auto_data$Price, x=auto_data$Engine.CC, type="scatter",
               marker = list(color="#e0812c")) %>%
       layout(xaxis = list(title = "Engine CC"),
             yaxis = list(title = "Price"))

fig <- plot_ly(y = auto_data$Price, x=auto_data$Power, type="scatter",
               marker = list(color="#f3da2d")) %>%
       layout(xaxis = list(title = "Power Hp"),
              yaxis = list(title = "Price"))

fig <- plot_ly(y = auto_data$Power, x=auto_data$Engine.CC, type="scatter",
               marker = list(color="#9932CC")) %>%
        layout(xaxis = list(title = "Engine"),
               yaxis = list(title = "Power"))


fig <- plot_ly(y = auto_data$Mileage.Km.L, color=auto_data$Fuel_Type, type="box") %>%
       layout(xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(y = auto_data$Mileage.Km.L, color=auto_data$Transmission, type="box") %>%
       layout(xaxis = list(title = "Transmission Type"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(y = auto_data$Mileage.Km.L, color=auto_data$Owner_Type, 
               type="box",colors = "viridis") %>%
       layout(xaxis = list(title = "Ownership"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(y = auto_data$Mileage.Km.L, color=as.factor(auto_data$Seats), 
               type="violin", colors = "plasma") %>%
       layout(xaxis = list(title = "Number of Seats"),
              yaxis = list(title = "Mileage"))


fig <- plot_ly(y = auto_data$Price, color=auto_data$Fuel_Type, type="box") %>%
       layout(xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Price"))


fig <- plot_ly(y = auto_data$Price, color=auto_data$Transmission, type="violin") %>%
       layout(xaxis = list(title = "Transmission Type"),
              yaxis = list(title = "Price"))


fig <- plot_ly(y = auto_data$Price, color=auto_data$Owner_Type, 
               type="box",colors = "viridis") %>%
       layout(xaxis = list(title = "Ownership"),
              yaxis = list(title = "Price"))

fig <- plot_ly(y = auto_data$Price, color=as.factor(auto_data$Seats), 
               type="violin", colors = "plasma") %>%
       layout(xaxis = list(title = "Number of Seats"),
              yaxis = list(title = "Price"))


fig
