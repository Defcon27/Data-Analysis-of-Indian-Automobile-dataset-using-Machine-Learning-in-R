library(plotly)


auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")


fig <- plot_ly(auto_data, x = ~Location, color = ~Fuel_Type, colors = "viridis") %>% add_histogram()%>%
        layout(xaxis = list(title = "Car Count"),
               yaxis = list(title = "City"))

fig <- plot_ly(auto_data, x = ~Location, color = ~Transmission, colors=c("#636efa","#ef553b")) %>% add_histogram()%>%
       layout(xaxis = list(title = "Car Count"),
              yaxis = list(title = "City"))

fig <- plot_ly(auto_data, x = ~Location, color = ~Owner_Type, colors="Dark2") %>% add_histogram()%>%
       layout(xaxis = list(title = "Car Count"),
              yaxis = list(title = "City"))


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


fig <- plot_ly(data = auto_data, y = ~Price, x=~Power,colors=c("#ee644e","#646ef8"),
               type = "scatter",color = ~Transmission,
               mode = "markers") %>%
   layout(xaxis = list(title = "Power"),
          yaxis = list(title = "Price"))



fig <- plot_ly(data = auto_data,  y = ~Kilometers_Driven, x=~Year,
               type = "scatter",color = ~Fuel_Type ,colors="Dark2",
               mode = "markers", symbol = ~Transmission) %>%
       layout(xaxis = list(title = "Year"),
              yaxis = list(title = "Distance Driven"))


fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Fuel_Type,colors="Spectral",
               mode = "markers",symbol = ~Transmission,
               symbols = c('triangle-up','x'),marker = list(size = 7)) %>%
       layout(xaxis = list(title = "Engine CC"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Fuel_Type,colors="Spectral",
               mode = "markers",symbol = ~Transmission,
               symbols = c('triangle-up','x'),marker = list(size = 7)) %>%
   layout(xaxis = list(title = "Engine CC"),
          yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Power,colors="plasma",
               symbol = ~Transmission,symbols = c('star','circle'),
               mode = "markers",marker = list(size = 7)) %>%
       layout(xaxis = list(title = "Engine CC"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(data = auto_data, y = ~Mileage.Km.L, x=~Engine.CC,
               type = "scatter",color = ~Seats,colors="viridis",
               symbol = ~Transmission,symbols = c('star','circle'),
               mode = "markers",marker = list(size = 7)) %>%
       layout(xaxis = list(title = "Engine CC"),
              yaxis = list(title = "Mileage Km/L"))



fig <- plot_ly(data = auto_data,y = ~Mileage.Km.L, x=~Fuel_Type,
               color=~Transmission,colors = "Set2" ,type="box") %>%
       layout(boxmode = "group",
              xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Mileage Km/L"))

fig <- plot_ly(data = auto_data,y = ~Engine.CC, x=~Fuel_Type,
               color=~Transmission,type="box") %>%
       layout(boxmode = "group",
              xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Engine Capacity"))

fig <- plot_ly(data = auto_data,y = ~Power, x=~Fuel_Type,
               color=~Transmission,colors = c("#e78ac3","#a6cee3"), type="box") %>%
       layout(boxmode = "group",
              xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Power (Hp)"))


fig <- plot_ly(data = auto_data,y = ~Mileage.Km.L, x=~Seats,
               color=~Transmission,colors = c("#fb8072","#bc80bd"), type="box") %>%
       layout(boxmode = "group",
              xaxis = list(title = "Seats"),
              yaxis = list(title = "Mileage"))

fig <- plot_ly(data = auto_data,y = ~Power, x=~Seats,
               color=~Transmission, colors=c("#6684ca","#ffd92f") ,type="box") %>%
       layout(boxmode = "group",
              xaxis = list(title = "Seats"),
              yaxis = list(title = "Power"))


fig <- plot_ly(data = auto_data,y = ~Price, x=~Fuel_Type,
               color=I(~Transmission), colors=c("#ef553b","#00cc96") ,type="violin") %>%
       layout(violinmode = 'group',
              xaxis = list(title = "Fuel Type"),
              yaxis = list(title = "Price"))
fig <- plot_ly(data = auto_data,y = ~Price, x=~Owner_Type,
               color=I(~Transmission), colors="Dark2" ,type="violin") %>%
       layout(violinmode = 'group',
              xaxis = list(title = "Owner Type"),
              yaxis = list(title = "Price"))



fig <- auto_data %>% plot_ly(type = 'violin') 
fig <- fig %>% add_trace(x = ~Fuel_Type[auto_data$Transmission == 'Automatic'],
                         y = ~Price[auto_data$Transmission == 'Automatic'],
                         legendgroup = 'Automatic', scalegroup = 'Automatic',
                         name = 'Automatic',side = 'negative',color = I("blue"))
fig <- fig %>% add_trace(x = ~Fuel_Type[auto_data$Transmission == 'Manual'],
                         y = ~Price[auto_data$Transmission == 'Manual'],
                         legendgroup = 'Manual', scalegroup = 'Manual',
                         name = 'Manual',side = 'positive',color = I("green"))%>%
       layout(violingroupgap = 0,
              xaxis = list(title = "Price"),
              yaxis = list(title = "Fuel Type"))


fig <- auto_data %>% plot_ly(type = 'violin') 
fig <- fig %>% add_trace(x = ~Location[auto_data$Transmission == 'Automatic'],
                         y = ~Price[auto_data$Transmission == 'Automatic'],
                         legendgroup = 'Automatic', scalegroup = 'Automatic',
                         name = 'Automatic',side = 'negative',color = I("blue"))

fig <- fig %>% add_trace(x = ~Location[auto_data$Transmission == 'Manual'],
                         y = ~Price[auto_data$Transmission == 'Manual'],
                         legendgroup = 'Manual', scalegroup = 'Manual',
                         name = 'Manual',side = 'positive',color = I("orange"))%>%
               layout(violingap = 0,
                      violingroupgap = 0,
                      violinmode = 'overlay',
                      xaxis = list(title = "Location"),
                      yaxis = list(title = "Price"))


fig <- plot_ly(data = auto_data,y = ~Price, x=~Seats,type="violin") %>%
       layout(violingap = 0,violingroupgap = 0,
              violinmode = "group",
              xaxis = list(title = "Seats"),
              yaxis = list(title = "Price"))


fig <- auto_data %>% plot_ly(type = 'violin') 
fig <- fig %>% add_trace(x = ~Fuel_Type[auto_data$Transmission == 'Automatic'],
                         y = ~Engine.CC[auto_data$Transmission == 'Automatic'],
                         legendgroup = 'Automatic', scalegroup = 'Automatic',
                         name = 'Automatic',side = 'negative',color = I("#a14ef4"))

fig <- fig %>% add_trace(x = ~Fuel_Type[auto_data$Transmission == 'Manual'],
                         y = ~Engine.CC[auto_data$Transmission == 'Manual'],
                         legendgroup = 'Manual', scalegroup = 'Manual',
                         name = 'Manual',side = 'positive',color = I("#ff6692"))%>%
               layout(xaxis = list(title = "Fuel Type"),
                      yaxis = list(title = "Engine Capacity (CC)"),
                      violingap = 0,violingroupgap = 0,violinmode = 'overlay')



fig <- auto_data %>% plot_ly(type = 'violin') 
fig <- fig %>% add_trace(x = ~Fuel_Type[auto_data$Transmission == 'Automatic'],
                         y = ~Power[auto_data$Transmission == 'Automatic'],
                         legendgroup = 'Automatic', scalegroup = 'Automatic',
                         name = 'Automatic',side = 'negative',color = I("#ef553b"))

fig <- fig %>% add_trace(x = ~Fuel_Type[auto_data$Transmission == 'Manual'],
                         y = ~Power[auto_data$Transmission == 'Manual'],
                         legendgroup = 'Manual', scalegroup = 'Manual',
                         name = 'Manual',side = 'positive',color = I("#00cc96"))%>%
               layout(xaxis = list(title = "Fuel Type"),
                      yaxis = list(title = "Power (Hp)"),
                      violingap = 0,violingroupgap = 0,violinmode = 'overlay')




fig

