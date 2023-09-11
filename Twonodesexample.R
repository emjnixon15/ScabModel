library(SimInf)


compartments <- c("S", "I", "C", "D", "H") 

#load node data (for 2 nodes)
data("nodes", package = "SimInf")

u0 <- data.frame(S = c(8,8), I= c(1,1), C = c(rep(0, nrow(nodes))), D = c(rep(0, nrow(nodes))), H= c(rep(0, nrow(nodes))))

d_ik <- distance_matrix(x = nodes$x , y= nodes$y, cutoff = 2500)

set.seed(123)

model <- SISe_sp(u0 = u0, tspan = 1:365, events = NULL, phi = 0,
                 upsilon = (0.0002519243), gamma = (1/77), alpha = 0.005619795, qprop = (1/2), tau = (1/653), epar = (1/3), dismortality = (0), restock = (0), beta_t1 = 0.06832791,
                 beta_t2 = 0.06832791, beta_t3 = 0.06832791, beta_t4 = 0.06832791, end_t1 = 91,
                 end_t2 = 182, end_t3 = 273, end_t4 = 365, distance = d_ik,
                 coupling = 0.5642857)
result <- run(model = model, threads = 1)

prevfarms <- prevalence(model = result, formula = I + C ~ S + I + D + H, level = 2)

withinnodeprev <- prevalence(model = result, formula = I + C ~ S + I + D + H, level = 3)
