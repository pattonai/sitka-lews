#### LIBRARIES ####
#the following code uses base R functions

#### LOAD DATA ####
#set local working directory
setwd("") 

#load processed data file for models
id.logit=read.csv(file="/00_sitkalandslidedays.csv")

#### MAKE MODELS ####

#glm logistic regression
model.1hr <- glm(data=id.logit,event~precip_mm_maxhr,family=binomial()) #model name FL-1H in manuscript
model.3hr <- glm(data=id.logit,event~precip_mm_max3hr,family=binomial()) #model name FL-3H in manuscript
model.3hr.pen <- brglm(data=id.logit,event~precip_mm_max3hr,family=binomial(),method="brglm.fit")
model.6hr <- glm(data=id.logit,event~precip_mm_max6hr,family=binomial())
model.12hr <- glm(data=id.logit,event~precip_mm_max12hr,family=binomial())

model.1day <- glm(data=id.logit,event~precip_mm_24hr,family=binomial())
model.2day <- glm(data=id.logit,event~precip_mm_2day,family=binomial())
model.3day <- glm(data=id.logit,event~precip_mm_3day,family=binomial())
model.7day <- glm(data=id.logit,event~precip_mm_7day,family=binomial())
model.14day <- glm(data=id.logit,event~precip_mm_14day,family=binomial())

model.1hr1day <- glm(data=id.logit,event~precip_mm_maxhr+precip_mm_day_shift,family=binomial())
model.1hr2day <- glm(data=id.logit,event~precip_mm_maxhr+precip_mm_2day_shift,family=binomial())
model.1hr3day <- glm(data=id.logit,event~precip_mm_maxhr+precip_mm_3day_shift,family=binomial())
model.1hr7day <- glm(data=id.logit,event~precip_mm_maxhr+precip_mm_7day_shift,family=binomial())
model.1hr14day <- glm(data=id.logit,event~precip_mm_maxhr+precip_mm_14day_shift,family=binomial())

model.3hr1day <- glm(data=id.logit,event~precip_mm_max3hr+precip_mm_day_shift,family=binomial())
model.3hr2day <- glm(data=id.logit,event~precip_mm_max3hr+precip_mm_2day_shift,family=binomial())
model.3hr3day <- glm(data=id.logit,event~precip_mm_max3hr+precip_mm_3day_shift,family=binomial())
model.3hr7day <- glm(data=id.logit,event~precip_mm_max3hr+precip_mm_7day_shift,family=binomial())
model.3hr14day <- glm(data=id.logit,event~precip_mm_max3hr+precip_mm_14day_shift,family=binomial())

model.6hr1day <- glm(data=id.logit,event~precip_mm_max6hr+precip_mm_day_shift,family=binomial())
model.6hr2day <- glm(data=id.logit,event~precip_mm_max6hr+precip_mm_2day_shift,family=binomial())
model.6hr3day <- glm(data=id.logit,event~precip_mm_max6hr+precip_mm_3day_shift,family=binomial())
model.6hr7day <- glm(data=id.logit,event~precip_mm_max6hr+precip_mm_7day_shift,family=binomial())
model.6hr14day <- glm(data=id.logit,event~precip_mm_max6hr+precip_mm_14day_shift,family=binomial())

model.12hr1day <- glm(data=id.logit,event~precip_mm_max12hr+precip_mm_day_shift,family=binomial())
model.12hr2day <- glm(data=id.logit,event~precip_mm_max12hr+precip_mm_2day_shift,family=binomial())
model.12hr3day <- glm(data=id.logit,event~precip_mm_max12hr+precip_mm_3day_shift,family=binomial())
model.12hr7day <- glm(data=id.logit,event~precip_mm_max12hr+precip_mm_7day_shift,family=binomial())
model.12hr14day <- glm(data=id.logit,event~precip_mm_max12hr+precip_mm_14day_shift,family=binomial())

model.24hr1day <- glm(data=id.logit,event~precip_mm_24hr+precip_mm_day_shift,family=binomial())
model.24hr2day <- glm(data=id.logit,event~precip_mm_24hr+precip_mm_2day_shift,family=binomial())
model.24hr3day <- glm(data=id.logit,event~precip_mm_24hr+precip_mm_3day_shift,family=binomial())
model.24hr7day <- glm(data=id.logit,event~precip_mm_24hr+precip_mm_7day_shift,family=binomial())
model.24hr14day <- glm(data=id.logit,event~precip_mm_24hr+precip_mm_14day_shift,family=binomial())


#Poisson logistic regression
poisson.1hr <- glm(data=id.logit,lscount~precip_mm_maxhr,family=poisson())
poisson.3hr <- glm(data=id.logit,lscount~precip_mm_max3hr,family=poisson())
poisson.6hr <- glm(data=id.logit,lscount~precip_mm_max6hr,family=poisson())
poisson.12hr <- glm(data=id.logit,lscount~precip_mm_max12hr,family=poisson())

poisson.1day <- glm(data=id.logit,lscount~precip_mm_24hr,family=poisson())
poisson.2day <- glm(data=id.logit,lscount~precip_mm_2day,family=poisson())
poisson.3day <- glm(data=id.logit,lscount~precip_mm_3day,family=poisson())
poisson.7day <- glm(data=id.logit,lscount~precip_mm_7day,family=poisson())
poisson.14day <- glm(data=id.logit,lscount~precip_mm_14day,family=poisson())

poisson.1hr1day <- glm(data=id.logit,lscount~precip_mm_maxhr+precip_mm_day_shift,family=poisson())
poisson.1hr2day <- glm(data=id.logit,lscount~precip_mm_maxhr+precip_mm_2day_shift,family=poisson())
poisson.1hr3day <- glm(data=id.logit,lscount~precip_mm_maxhr+precip_mm_3day_shift,family=poisson())
poisson.1hr7day <- glm(data=id.logit,lscount~precip_mm_maxhr+precip_mm_7day_shift,family=poisson())
poisson.1hr14day <- glm(data=id.logit,lscount~precip_mm_maxhr+precip_mm_14day_shift,family=poisson())

poisson.3hr1day <- glm(data=id.logit,lscount~precip_mm_max3hr+precip_mm_day_shift,family=poisson())
poisson.3hr2day <- glm(data=id.logit,lscount~precip_mm_max3hr+precip_mm_2day_shift,family=poisson())
poisson.3hr3day <- glm(data=id.logit,lscount~precip_mm_max3hr+precip_mm_3day_shift,family=poisson())
poisson.3hr7day <- glm(data=id.logit,lscount~precip_mm_max3hr+precip_mm_7day_shift,family=poisson())
poisson.3hr14day <- glm(data=id.logit,lscount~precip_mm_max3hr+precip_mm_14day_shift,family=poisson())

poisson.6hr1day <- glm(data=id.logit,lscount~precip_mm_max6hr+precip_mm_day_shift,family=poisson())
poisson.6hr2day <- glm(data=id.logit,lscount~precip_mm_max6hr+precip_mm_2day_shift,family=poisson())
poisson.6hr3day <- glm(data=id.logit,lscount~precip_mm_max6hr+precip_mm_3day_shift,family=poisson())
poisson.6hr7day <- glm(data=id.logit,lscount~precip_mm_max6hr+precip_mm_7day_shift,family=poisson())
poisson.6hr14day <- glm(data=id.logit,lscount~precip_mm_max6hr+precip_mm_14day_shift,family=poisson())

poisson.12hr1day <- glm(data=id.logit,lscount~precip_mm_max12hr+precip_mm_day_shift,family=poisson())
poisson.12hr2day <- glm(data=id.logit,lscount~precip_mm_max12hr+precip_mm_2day_shift,family=poisson())
poisson.12hr3day <- glm(data=id.logit,lscount~precip_mm_max12hr+precip_mm_3day_shift,family=poisson())
poisson.12hr7day <- glm(data=id.logit,lscount~precip_mm_max12hr+precip_mm_7day_shift,family=poisson())
poisson.12hr14day <- glm(data=id.logit,lscount~precip_mm_max12hr+precip_mm_14day_shift,family=poisson())

poisson.24hr1day <- glm(data=id.logit,lscount~precip_mm_24hr+precip_mm_day_shift,family=poisson())
poisson.24hr2day <- glm(data=id.logit,lscount~precip_mm_24hr+precip_mm_2day_shift,family=poisson())
poisson.24hr3day <- glm(data=id.logit,lscount~precip_mm_24hr+precip_mm_3day_shift,family=poisson())
poisson.24hr7day <- glm(data=id.logit,lscount~precip_mm_24hr+precip_mm_7day_shift,family=poisson())
poisson.24hr14day <- glm(data=id.logit,lscount~precip_mm_24hr+precip_mm_14day_shift,family=poisson())

#manual LOOCV glm models--each version omits one landslide event
model.3hr.loo1<- glm(data=id.logit[id.logit$X!=4663,],event~precip_mm_max3hr,family=binomial())
model.3hr.loo2<- glm(data=id.logit[id.logit$X!=5411,],event~precip_mm_max3hr,family=binomial())
model.3hr.loo3<- glm(data=id.logit[id.logit$X!=6157,],event~precip_mm_max3hr,family=binomial())
model.3hr.loo4<- glm(data=id.logit[id.logit$X!=6559,],event~precip_mm_max3hr,family=binomial())
model.3hr.loo5<- glm(data=id.logit[id.logit$X!=6566,],event~precip_mm_max3hr,family=binomial())
poisson.3hr.loo1 <- glm(data=id.logit[id.logit$X!=4663,],lscount~precip_mm_max3hr,family=poisson())
poisson.3hr.loo2 <- glm(data=id.logit[id.logit$X!=5411,],lscount~precip_mm_max3hr,family=poisson())
poisson.3hr.loo3 <- glm(data=id.logit[id.logit$X!=6157,],lscount~precip_mm_max3hr,family=poisson())
poisson.3hr.loo4 <- glm(data=id.logit[id.logit$X!=6559,],lscount~precip_mm_max3hr,family=poisson())
poisson.3hr.loo5 <- glm(data=id.logit[id.logit$X!=6566,],lscount~precip_mm_max3hr,family=poisson())

#### EXAMPLE LANDSLIDE PREDICTIONS BASED ON RAINFALL TOTALS ###

#calculate landslide probability for preferred model (FL-3H) for observed rainfall amounts in the full record
id.logit$fl3h = predict(model.3hr,list(precip_mm_max3hr=(id.logit$precip_mm_max3hr)),type="response")

#### CALCULATE AIC AND BIC FOR EACH MODEL ####
#example of AIC and BIC calculation for model FL-3H; iterate for each model
AIC(model.3hr)
BIC(model.3hr)
