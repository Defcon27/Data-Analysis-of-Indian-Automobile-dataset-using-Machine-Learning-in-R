library(caTools)
library(caret)
library(fastDummies)
library(plotly)


auto_data = read.csv("C://Users/subha/Desktop/Visualization & Analysis on Automobile Dataset using Machine Learning in R/indian-auto-mpg.csv")



# Cleaning Data
new_df = auto_data
new_df %>% filter(Seats>0) -> new_df
new_df %>% filter(Mileage.Km.L>0) -> new_df
new_df %>% filter(Price<70) -> new_df
new_df = new_df[3:14]
new_df = new_df[,-2]

new_df$Price = new_df$Price*100000

# Checking
sum(is.na(auto_data))==0


# Creating dummy variables for categorical variables
new_df <- dummy_cols(new_df, 
                     select_columns = c('Manufacturer','Fuel_Type',
                                        'Transmission','Owner_Type'),
                     remove_selected_columns = TRUE)

auto_data = new_df



# Train Test Split
sample.split(auto_data$Price, SplitRatio = 0.85) -> split_tag
subset(auto_data, split_tag==T) -> train
subset(auto_data, split_tag==F) -> test


# Building Linear Regression Model
ML_Model = train(Price ~ .+poly(Power,5)+poly(Engine.CC,5)+poly(Year,5)+poly(Seats,5),
                 data = auto_data, method = "lm",na.action = na.omit,
                 preProcess=c("scale","center"),
                 trControl= trainControl(method="none"))


# Prediction
test_pred_data = predict(ML_Model, newdata = test)
pred_data = cbind(Actual=test$Price/100000, Predicted=test_pred_data/100000)
pred_df = as.data.frame(pred_data)
error = (pred_df$Actual-pred_df$Predicted)
pred_df = cbind(pred_df,error)
rmse = sqrt(mean(error^2))


# Plotting Prediction vs Actual values
plot_ly(x=pred_df$Actual,y=pred_df$Predicted)




