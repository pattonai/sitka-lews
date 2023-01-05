# sitka_lews

Data and files related to the manuscript submitted to NHESS 

Manuscript title: Landslide initiation thresholds in data sparse regions: Application to landslide early warning criteria in Sitka, Alaska

Authors: Patton, A.I., Luna L.V., Roering, J.J., Jacobs, A., Korup, O., Mirus, B.B.

Files in this repository:

00_sitkalandslidedays.csv data file with calculated precipitation totals at several time intervals and landslide occurrence (binary and count) for each day of record

01_sitkafrequentistmodels.R fits the frequentist logistic and Poisson regression models and calculates AIC and BIC

02_sitkabayesianmodels.Rmd fits the Bayesian logistic and Poisson
regression models and calculates LOOIC

03_sitkafrequentistvalidation.Rmd performs validation steps for the
3-hourly frequentist models.

04_sitkabayesianvalidation.Rmd performs manual leave-one-out cross
validation for the 3-hourly Bayesian models.
