#include("MCMCplot.jl"); traceplot("MCMC_samples_residual_variance.txt","plotly",4); savefig("plot.png");
using DelimitedFiles,Plots,Plots.PlotMeasures,StatsPlots

function traceplot(file,backend="plotly",nplots=4)
#catch errors when no backends are installed
    if backend == "pyplot"
        pyplot(size=(300*nplots,200*nplots))
    elseif backend == "plotly"
        plotly(size=(300*nplots,200*nplots))
    end
    mychain,mylabel=readdlm(file,',',header=true)
    if nplots > length(mylabel)
        nplots=length(mylabel)
    end
    mychain = mychain[:,1:nplots]
    mylabel = mylabel[1:nplots]

    steps = 1:size(mychain,1)
    h1=plot(mychain, layout=(nplots,1),title= reshape(mylabel,1,length(mylabel)),
         label="",title_location=:left,titlefont=12,xlabel="iterations",ylabel = "residual variance",ytickfont=font(8))
    # add horizontal line 
    hline!(h1,cumsum(mychain,dims=1)./steps,layout=(nplots,1),label="",color=:red,linewidth=0.1)
    #density plot
    h2=density(mychain,layout= (nplots,1),label="",orientation = :horizontal,xlim =[0,1.5],ylim = [-10,25])
    plot(h1, h2, link = :y, layout = grid(1,2,widths = [0.7,0.3]))
end


