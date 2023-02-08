# MechaCar_Statistical_Analysis-

## Overview of the project

For this project we used The MechaCar_mpg.csv dataset which contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. 

Using our knowledge of R, we designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csvfile. 

## Results

### 1. Linear Regression to Predict MPG

<img width="442" alt="Imagen _Linear_Regression" src="https://user-images.githubusercontent.com/113747210/217675532-f5e5f765-e59f-436d-8227-587a6c421baf.png">

*	**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

According to the results we can see above, ground clearance provide a non-random amount of variance.

*	**Is the slope of the linear model considered to be zero? Why or why not?**

The p-value is 6.712e -11 so, the slope is not equal to zero.

*	**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The Multiple R-squared value is 0.7119, that means that the model predict at a 71% rate. This can be interpreted as a not very effective model but we can find out more variables and factors to improve the model.

### 2. Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

To address the question, we wrote the code to get the following data that includes the summary (mean, median, variance and standard deviation) for the total lots and for each lot, as we can see next:

<img width="442" alt="Total_summary_1" src="https://user-images.githubusercontent.com/113747210/217675749-4c901eac-7726-4b5f-bbd8-0d474bf9f5af.png">

<img width="442" alt="For_Lot_1" src="https://user-images.githubusercontent.com/113747210/217675809-411b7575-3e19-41a9-a1a7-892d6b1d626b.png">

So, to answer the question, we can see that the variance for the total lots is 62 which means it meets the design specifications by not exceeding 100 pounds per square inch. Looking at the lots individually, we can see that Lot 1 and 2 also met the specifications with a variance of 0.97 and 7.4, but Lot 3 is not the case because it has a variance of 170.

### 3. T-Tests on Suspension Coils

For this part, we used the t.test () function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

According to the results, as we can see below, the true mean of the sample is 1498.78, with a p-value of 0.06028, if significance value is 0.05, then we have a significant difference of all the manufacturing lots from the population mean.

<img width="442" alt="t_test_1" src="https://user-images.githubusercontent.com/113747210/217675878-4d464480-19e1-4cfb-b065-29e9c91b916e.png">

Now, to see if each manufacturing lot is statistically different from the population mean of 1,500 per square inch, we got the following, which means that:

-	The Lot 1 has a sample of 1,500 with a p-value of 1.
-	The Lot 2 has a sample of 1500.2 with a p-value of 0.6072
-	The Lot 3 has sample of 1496.14 with a p-value of 0.04168

This tell us that the Lot 3 is the one with a significant difference, has the lower mean and a higher variance, so we would suggest to review specifically the process for Lot 3, because maybe they are not adequately meeting the criteria. 

<img width="442" alt="t_test_2" src="https://user-images.githubusercontent.com/113747210/217675891-5cc52cca-1c90-497e-9287-5744473cc3fa.png">

<img width="442" alt="t_test_3" src="https://user-images.githubusercontent.com/113747210/217675900-6f178075-6a05-4c28-b477-7fa7139e6d72.png">

<img width="442" alt="t_test_4" src="https://user-images.githubusercontent.com/113747210/217675916-84ff203b-28c9-47fd-b673-c82df4b77745.png">

### 4. Study Design: MechaCar vs Competition
With our knowledge of R, we designed a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers. The goal of this statistical study is to gather information about different metrics that a costumer can be interested when they are deciding which car to buy. With this data we can compare how is mecha car in relation to its competitors.

o	What metric or metrics are you going to test?

-	Current price
-	Safety Features
-	MPG (Fuel efficiency)
-	Maintenance cost
-	Resale price

* What is the null hypothesis or alternative hypothesis?

Null Hypothesis: The price of MechaCar is adequate based on the characteristics offered to its consumers.

* What statistical test would you use to test the hypothesis? And why?

We could use Multiple Linear Regression

* What data is needed to run the statistical test?

We would need to collect the data about sale price, mpg, safety features, maintenance costs, resale prices about the MechaCar direct competitors, which means, the cars in the market with similar characteristics and range of price.











