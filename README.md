# Plots.jl
## MCMC plots function
```jl
inputfile = "MCMC_samples_residual_variance.txt"
traceplot(inputfile,backend="plotly",nplots =4)
savefig("plot.png")
```
1.Plot MCMC residual variance from inputfile.

2.Choose two backend plots, pyplot and plotly.

3.Choose subset plots, nplots is equal to the number of columns in the file.

4.Save MCMC plots.

## Plotting
![alt text](https://github.com/KeyuXu/Plots/blob/KeyuXu-MCMCplot/images/plot.png?raw=true)
