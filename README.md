# sitka_lews

## Data and files related to the manuscript submitted to NHESS 

Manuscript title: Landslide initiation thresholds in data sparse regions: Application to landslide early warning criteria in Sitka, Alaska

Authors: Patton, A.I., Luna L.V., Roering, J.J., Jacobs, A., Korup, O., Mirus, B.B.

## Files in this repository:

### 00_sitkalandslidedays.csv 

Data file with calculated precipitation totals at several time intervals and landslide occurrence (binary and count) for each day of record.

Data fields include:

Date in year-month-day format (column "day"); 

total daily precipitation in millimeters (mm) (column "precip_mm_day") recorded at the Sitka Airport (NWS Station code PASI);

maximum precipitation (mm) recorded each day over 1, 3, 6, and 12-hour increments (e.g., column "precip_mm_max3hr"); 

maximum hourly rainfall (mm) that occurred in the 24-hours prior to a landslide event, or total daily rainfall for days on which no landslide happened (column "precip_mm_24hr); 

total rainfall (mm) recorded over the 2, 3, 7, and 14 days prior to each date but **including** the observed day (e.g., column "precip_mm_2day"); 

total rainfall (mm) recorded over the 2, 3, 7, and 14 days prior to each date but **not** including the observed day (e.g., column "precip_mm_2day_shift"); 

a binary categorization of whether or not a landslide occurred within the study area on the observed day, where 0 = no landslides, 1 = one or more landslides (column "event"); 

a count of landslides that occurred on the observed day (column "lscount"); 

and a categorical variable describing the magnitude of landslide occurrence, where 1 = no landlsides and 3 = widespread landsliding (column "lscat").

### 01_sitkafrequentistmodels.R 

Fits the frequentist logistic and Poisson regression models, creates manual leave-one-out models for validation; calculates AIC and BIC

### 02_sitkabayesianmodels.Rmd 

Fits the Bayesian logistic and Poisson
regression models and calculates LOOIC

### 03_sitkafrequentistvalidation.Rmd 

Performs validation steps for the
3-hourly frequentist models.

### 04_sitkabayesianvalidation.Rmd 

Performs manual leave-one-out cross
validation for the 3-hourly Bayesian models.
