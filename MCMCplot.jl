#include("MCMCplot.jl"); traceplot("MCMC_samples_residual_variance.txt");

using DelimitedFiles,Statistics,Plots,Plots.PlotMeasures,StatsPlots



function traceplot(file;header=true,separator=',',backend="pyplot",nplots=4)
    #catch errors when no backends are installed
    if backend == "pyplot"
        pyplot(size=(1000,800))
    elseif backend == "plotly"
        plotly(size=(1000,800))
    elseif backend == "gr"
        gr(size=(1000,800))
    end
    mychain,mylabel=readdlm(file,separator,header=header)
    if nplots > length(mylabel)
        nplots=length(mylabel)
    end
    mychain = mychain[:,1:nplots]
    mylabel = mylabel[1:nplots]

    steps = 1:size(mychain,1)
    h1=plot(mychain, layout=(nplots,1),title= reshape(mylabel,1,length(mylabel)),
         label="",title_location=:left,titlefont=12,ylabel = "MCMC residual variance",xlabel="iterations",)
    # add horizontal line 
    hline!(h1,cumsum(mychain,dims=1)./steps,layout=(nplots,1),label="",color=:red,linewidth=0.1)
    #density plot
    h2=density(mychain,layout= (nplots,1),label="",orientation = :horizontal,xlim =[0,1.5],ylim = [-10,20])
    plot(h1, h2, link = :y, layout = grid(1,2,widths = [0.7,0.3]))
    # save plots
    savefig("plot.png")
end



