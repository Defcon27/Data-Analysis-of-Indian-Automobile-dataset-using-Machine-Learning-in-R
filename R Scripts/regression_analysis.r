library(caret)
library(plotly)
library(heatmaply)



auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")


corr_df = data.frame(auto_data$Year, auto_data$Kilometers_Driven, auto_data$Engine.CC,
                     auto_data$Power, auto_data$Seats, auto_data$Mileage.Km.L, auto_data$Price)


heatmaply_cor(cor(corr_df),k_col = 2, k_row = 2)
corr <- round(cor(corr_df), 1)
p.mat <- cor_pmat(corr_df)
corr.plot <- ggcorrplot(corr, hc.order = TRUE, type = "lower", outline.col = "white",p.mat = p.mat)
corr.plot





fit <- lm(Price ~ Year, data = auto_data)

auto_data %>% plot_ly(x = ~Year) %>% 
              add_markers(y = ~Price, name="Scatter",
                          marker = list(color="#636efa")) %>% 
              add_lines(x = ~Year, y = fitted(fit), name="Regression Line")%>%
              layout(showlegend = T)


fit <- lm(Price ~ Kilometers_Driven, data = auto_data)

auto_data %>% plot_ly(x = ~Kilometers_Driven) %>% 
              add_markers(y = ~Price, name="Scatter",
                          marker = list(color="#00cc96")) %>% 
              add_lines(x = ~Kilometers_Driven, y = fitted(fit), name="Regression Line")%>%
              layout(showlegend = T)


fit <- lm(Price ~ Engine.CC, data = auto_data)

auto_data %>% plot_ly(x = ~Engine.CC) %>% 
              add_markers(y = ~Price, name="Scatter",
                          marker = list(color="#ab63fa")) %>% 
              add_lines(x = ~Engine.CC, y = fitted(fit), name="Regression Line")%>%
              layout(showlegend = T)



fit <- lm(Price ~ Power, data = auto_data)

auto_data %>% plot_ly(x = ~Power) %>% 
              add_markers(y = ~Price, name="Scatter",
                          marker = list(color="#e28676")) %>% 
              add_lines(x = ~Power, y = fitted(fit), name="Regression Line")%>%
              layout(showlegend = T)



fit <- lm(Price ~ Seats, data = auto_data)

auto_data %>% plot_ly(x = ~Seats) %>% 
              add_markers(y = ~Price, name="Scatter",
                          marker = list(color="#ffff33")) %>% 
              add_lines(x = ~Seats, y = fitted(fit), name="Regression Line")%>%
              layout(showlegend = T)



fit <- lm(Price ~ Mileage.Km.L, data = auto_data)

auto_data %>% plot_ly(x = ~Mileage.Km.L) %>% 
              add_markers(y = ~Price, name="Scatter",
                          marker = list(color="#1cbe4f")) %>% 
              add_lines(x = ~Mileage.Km.L, y = fitted(fit), name="Regression Line")%>%
  layout(showlegend = T)






