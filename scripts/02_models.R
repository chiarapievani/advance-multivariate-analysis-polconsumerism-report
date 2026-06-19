# Empty model to see ICC to decide whether to cluster based on countries --------------------

empty_model <- glmer(
  bctprd ~ 1 + (1 | cntry),
  data = data,
  family = binomial(link = "logit")
)

# Model 1 - separate predictors ----------------------------------------

model_1a <- glmer(
  bctprd ~ polintr + pbldmna + pltsprt + lrscale + 
  (1 | cntry), data = data,
  family = binomial(link = "logit")
  )

model_1b <- glmer(
  bctprd ~ clmcnrn + (1 | cntry),
  data = data, family = binomial(link = "logit")
)

# Model 2 - all predictors + controls --------------------------

model_2 <- glmer(
  bctprd ~ polintr + pbldmna + pltsprt + lrscale + 
  clmcnrn + (1 | cntry) +
  z_age + z_edu + gndr + rsdnc, 
  data = data, family = binomial(link = "logit")
)

# Model 3 - random slopes and interaction --------------------

model_3 <- glmer(
  bctprd ~ polintr + pbldmna + pltsprt + lrscale + 
  clmcnrn + (1 + clmcnrn | cntry) + lrscale:clmcnrn +
  z_age + z_edu + gndr + rsdnc, 
  data = data, family = binomial(link = "logit")
)





