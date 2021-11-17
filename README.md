# Mid Bootcamp Project: Regression
![16402-3](https://user-images.githubusercontent.com/81629326/142200377-dd6df1a3-f40b-4d85-9923-abe1201459c0.jpg)

## Predicting house pricing based on specific features

By Deep-South ([Simon Stewart](https://github.com/nomaditect/) & [Yamila Rodriguez Terán](https://github.com/yamilart/))

## Scenario
Using the [data provided](https://github.com/ironhack-edu/data_mid_bootcamp_project_regression) we had to work as analysts for a real estate company that wants to build a machine learning model to **predict the selling prices of houses based on a variety of features** on which the value of the house is evaluated.


## Index
- Tools
- Proccess
- EDA
- Model
- Outcomes
- Possible Next Steps


### Tools
- For the particular queries we were asked about we worked with [SQL](https://github.com/nomaditect/mid_bootcamp_project/tree/main/sql)
- To understand which factors are responsible for higher property value - $650K and above, we used [Tableau](https://github.com/nomaditect/mid_bootcamp_project/tree/main/tableau)
- For the EDA, wranging, pre-processing and ML Modelling with used [Python](https://github.com/nomaditect/mid_bootcamp_project/tree/main/code)(from Jupiter Notebook)


### Process
General process followed for the whole project:

- Github: Our first step was setting the repo for collabs and data uploading
- Notion: To keep track of our tasks and add/remove relevant information
- Jupiter Notebook: We analyzed the whole data with Python following these steps:


### Model
- First Try - Without preprocessing. We ran Linear Regression and KNN
- Second Try - Using StandardScaler on numeric columns and GetDummies on categoricals. We ran Linear Regression and KNN
- Third Try - Removing all the outliers. Using StandardScaler on numeric columns and GetDummies on categoricals. We ran Linear Regression and KNN
- Fourth Try


### Outcomes
Our best fit model was a Linear Regression having pre-processed using StandardScaler on numeric columns and GetDummies on categoricals, we achieved an accuracy of 69%


### Possible Next Steps
We definitely need to redo the EDA and handle the data in some other way. Maybe by using also columns we discarded at the begining like `date`, `lat`, `long`.
Other suggestions we came up with was also adding more relevant data regarding location for example, like metro stations, or some city highlights, to be able to have more features for a more accurate model (hopefully).
