library(plotly)

auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")

summary(auto_data)

fig <- plot_ly(x = auto_data$Manufacturer, type = "histogram",
               marker = list(color = "rgba(255, 0, 0, 0.7)")) %>%
       layout(xaxis = list(title = "Manufacturer",categoryorder="total descending"),
              yaxis = list(title = "Car Count"))

fig <- plot_ly(x = auto_data$Location, type = "histogram")%>%
       layout(xaxis = list(title = "Location"),
              yaxis = list(title = "Car Count"))
       

fig <- plot_ly(x = as.factor(auto_data$Year), histfunc='sum',type = "histogram",
               marker = list(color = "rgba(0,205,149, 1)"))%>%
       layout(xaxis = list(title = "Year"),
              yaxis = list(title = "Car Count"))

fig <- plot_ly(x = auto_data$Transmission, type = "histogram",
               marker = list(color = "#e0812c"))%>%
       layout(xaxis = list(title = "Transmission"),
              yaxis = list(title = "Car Count"))

fig <- plot_ly(x = auto_data$Fuel_Type, type = "histogram",
               marker = list(color = "#d89f38"))%>%
       layout(xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Car Count"))

fig <- plot_ly(x = as.factor(auto_data$Seats), type = "histogram",
               marker = list(color = "#707bfa")) %>%
        layout(xaxis = list(title = "Number of Seats"),
               yaxis = list(title = "Car Count"))



fig <- plot_ly(y = auto_data$Engine.CC, type = "box")%>%
       layout(xaxis = list(title = "Boxplot"),
              yaxis = list(title = "Engine CC"))

fig <- plot_ly(y = auto_data$Power, type = "box") %>%
       layout(xaxis = list(title = "Horse Power"),
              yaxis = list(title = "Engine Power"))

fig <- plot_ly(y = auto_data$Mileage.Km.L, type = "box")%>%
       layout(xaxis = list(title = "Mileage"),
              yaxis = list(title = "Km per Litre"))

fig <- plot_ly(y = auto_data$Price, type = "box", color=".")%>%
      layout(xaxis = list(title = "Price"),
             yaxis = list(title = "Lakhs"))


fig

