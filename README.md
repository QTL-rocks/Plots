# Plots.jl
## MCMC plots function
```jl
traceplot("file",backend="plotly",nplots =4)
```
1.plot MCMC residual variance from file

2.choose two backend plots, pyplot and plotly

3.choose subset plots, nplots is equal to the number of columns in the file.
