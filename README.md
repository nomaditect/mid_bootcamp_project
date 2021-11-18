# Mid-bootcamp Project - Regression
![16402-3](https://user-images.githubusercontent.com/81629326/142200377-dd6df1a3-f40b-4d85-9923-abe1201459c0.jpg)

## Predicting house pricing based on specific features

by [Yamila Rodriguez Terán](https://github.com/yamilart/) & [Simon Stewart](https://github.com/nomaditect/) aka Deep-South , Nov 2021

## Scenario
Using the [data provided](https://github.com/ironhack-edu/data_mid_bootcamp_project_regression) we had to work as analysts for a real estate company that wants to build a machine learning model to **predict the selling prices of houses based on a variety of features** on which the value of the house is evaluated.


## Index
- [Tools](https://github.com/nomaditect/mid_bootcamp_project#tools)
- [Proccess](https://github.com/nomaditect/mid_bootcamp_project#proccess)
- [EDA](https://github.com/nomaditect/mid_bootcamp_project#EDA)
- [Model](https://github.com/nomaditect/mid_bootcamp_project#model)
- [Outcomes](https://github.com/nomaditect/mid_bootcamp_project#outcomes)
- [Possible Next Steps](https://github.com/nomaditect/mid_bootcamp_project#possible-next-steps)


### Tools
- For the particular queries we were asked about we worked with [SQL](https://github.com/nomaditect/mid_bootcamp_project/tree/main/sql)
- To understand which factors are responsible for higher property value - $650K and above, we used [Tableau](https://github.com/nomaditect/mid_bootcamp_project/tree/main/tableau)
- For the EDA, wranging, pre-processing and ML Modelling with used [Python](https://github.com/nomaditect/mid_bootcamp_project/tree/main/code)(from Jupiter Notebook)


### Process
General process followed for the whole project:

- Github: Our first step was setting the repo for collabs and data uploading
- Notion: To keep track of our tasks and add/remove relevant information
- Jupiter Notebook: We analyzed and cleaned the whole dataset with Python and ran 4 models with different approaches.


### Models
We ran 4 iterations with different feature selection but always with the same 4 models: **Linear Regression, KNN, Decision Tree & Random Forest**
- First Try - Using Raw Data (without any further processing)
- Second Try - Using StandardScaler on numeric columns and GetDummies on categoricals
- Third Try - Removing all the outliers
- Fourth Try - Using 'obvious' data, we used the number of bedrooms, of floors, the square meters of the lot, the condition of the house and, of course, the price.


### Outcomes
Our best fit model was a Linear Regression having pre-processed using StandardScaler on numeric columns and GetDummies on categoricals, we achieved an accuracy of 69%
On the other hand our KNN model performed better when we removed all the outliers, but still only reached an accuracy of 60%


### Possible Next Steps
We definitely need to redo the EDA and handle the data in some other way. Maybe by using also columns we discarded at the begining like `date`, `lat`, `long`.
Other suggestions we came up with was also adding more relevant data regarding location for example, like metro stations, or some city highlights, to be able to have more features for a more accurate model (hopefully).

-------

thanks for stoping by, have a donut 🍩
