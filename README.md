# Plots.jl
## MCMC plots function
```jl
traceplot("file",backend="plotly",nplots =4)
```
1.plot MCMC residual variance from file

2.choose two backend plots, pyplot and plotly

3.choose subset plots, the number of subset plots is corresponding to the number of columns in the file.
