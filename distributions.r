
curve(expr = dnorm(x, mean= 0,sd = 1), from = -4, to = 4, col = "red", lwd = 3.5,ylab="",xlab="",xaxt='n',yaxt='n')
curve(expr = dt(x, df = 1), from = -4, to = 4, col = "red", lwd = 3.5,ylab="",xlab="",xaxt='n',yaxt='n')

library(nimble)
curve(expr = ddexp(x), from = -4, to = 4, col = "red", lwd = 3.5,ylab="",xlab="",xaxt='n',yaxt='n')

library(EnvStats)
curve(expr =   dnormMix(x, mean1 = 0, sd1 = 10, mean2 = 0, sd2 = 1, p.mix = 0.5), from = -4, to = 20, col = "red", lwd = 3.5,ylab="",xlab="",xaxt='n',yaxt='n')

curve(expr =   dnormMix(x, mean1 = 0, sd1 = 10, mean2 = 0, sd2 = 1, mean3 = 0, sd3 = 1, p.mix = 0.5), from = -4, to = 20, col = "red", lwd = 3.5,ylab="",xlab="",xaxt='n',yaxt='n')
