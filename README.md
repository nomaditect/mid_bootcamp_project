# Mid-bootcamp Project_Regression
<img src="https://user-images.githubusercontent.com/44263926/142408118-88d290be-96e0-4d12-822c-28e0fdcb5ef3.jpg" width="500" height="300">


## Predicting house pricing based on specific features

by [Yamila Rodriguez Terán](https://github.com/yamilart/) & [Simon Stewart](https://github.com/nomaditect/) aka Deep-South , Nov 2021

## Scenario
Using the [data provided](https://github.com/ironhack-edu/data_mid_bootcamp_project_regression) we had to work as analysts for a real estate company that wants to build a machine learning model to **predict the selling prices of houses based on a variety of features**.


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

- **Github:** Our first step was setting the repo for collabs and data uploading
- **Notion:** To keep track of our tasks and add/remove relevant information
- **Jupiter Notebook:** We analyzed and cleaned the whole dataset with Python and ran 4 models with different approaches.


### EDA
We visually analized the data to decided with which features (columns) we were going to be working and which ones we were going to drop.  
We splitted the data into categoricals and numericals to deal with the difference in numbers, used correlation matrix, checked for outliers and typos and finally choose the columns to work with in each iteration  
<img width="583" src="https://user-images.githubusercontent.com/81629326/142399396-65626b3f-eba3-4683-b8ec-936280f82aa1.jpg">



### Models
We ran 4 iterations with different feature selection but always with the same 4 models:   
**Linear Regression, KNN, Decision Tree & Random Forest** (last two only out of curiosity, not really part of our research)  
- **First Try** - Using Raw Data (without any further processing)  
Our best fit was **Linear Regression with 65% accuracy**  
<img width="369" alt="Screenshot 2021-11-18 at 11 29 31" src="https://user-images.githubusercontent.com/81629326/142398699-22c8f3f5-34f7-45f9-a612-ba303331fa7f.png">

- **Second Try** - Using StandardScaler on numeric columns and GetDummies on categoricals  
This was out best iteration  
Our best fit was **Linear Regression with 69% accuracy**  
<img width="374" alt="Screenshot 2021-11-18 at 11 29 43" src="https://user-images.githubusercontent.com/81629326/142398723-be6d725a-ded1-4361-bf17-78cd0c209aab.png">

- **Third Try** - Removing all the outliers  
In this case out best fit was **KNN with 61% accuracy**  
<img width="377" alt="Screenshot 2021-11-18 at 11 29 54" src="https://user-images.githubusercontent.com/81629326/142398746-d24fb4ab-e1fb-4607-b35a-be107942dcc2.png">

- **Fourth Try** - Using 'obvious' data, we used the number of bedrooms, of floors, the square meters of the lot, the condition of the house and, of course, the price  
Our worst iteration  
Our best fit was **Linear Regression with 60% accuracy**  
<img width="378" alt="Screenshot 2021-11-18 at 11 30 05" src="https://user-images.githubusercontent.com/81629326/142398782-98df88d7-a0ac-41f7-8746-e1ff122b3bbf.png">


### Outcomes
Our best fit model was a Linear Regression having pre-processed using StandardScaler on numeric columns and GetDummies on categoricals, we achieved an accuracy of 69%  
<img width="583" alt="Screenshot 2021-11-18 at 09 14 46" src="https://user-images.githubusercontent.com/81629326/142398900-f5e33808-2e33-4f45-ad99-9bbda178f252.png">


### Possible Next Steps
We definitely need to redo the EDA and handle the data in some other way. Maybe by using also columns we discarded at the begining like `date`, `lat`, `long`.
Other suggestions we came up with was also adding more relevant data regarding location for example, like metro stations, or some city highlights, to be able to have more features for a more accurate model (hopefully).

-------

thanks for stoping by, have a donut 🍩
