# Regression tables ----------------------------------------------

table_mod0 <- tab_model(empty_model,
                  title = "Table 1. Empty logistic multilevel model predicting boycott participation")

table_mod1 <- tab_model(model_1a, model_1b,
                        transform = NULL,
                        title = "Table 2. Regression coefficients for political and environmental predictors with random intercepts for countries")

table_mod2 <- tab_model(model_2,
                        transform = NULL,
                        title = "Table 3. Regression coefficients for all individual predictors with random intercepts for countries")

table_mod3 <- tab_model(model_3,
                        transform = NULL,
                        title = "Table 4. Regression coefficients for full multilevel logistic regression model with random slopes and intercepts for climate concern across countries and interaction between climate concern and ideological placement")


# Marginal effects plot ------------------------------------------------

clmcnrn_lrscale <- plot_slopes(
  model_3,
  variables = "clmcnrn",
  condition = "lrscale_c"
) +
  geom_rug(
    data = data,
    aes (x = lrscale_c),
    inherit.aes = FALSE,
    sides = "Slope",
    alpha = 0.2
  ) +
  geom_hline(yintercept = 0, linetype = "dashed", color ="grey40")+
  theme_bw(base_size=12) +
  labs(title = "Figure 1. Average Marginal Effects plot of climate concern on boycott participation across the political orientation scale")










