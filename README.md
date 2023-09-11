# ScabModel: A stochastic metapopulation model of sheep scab adapted from the SimInf package 

## Description

ScabModel is a version of the SimInf package which contains modifications to the SISe_sp model that allow transmission of Psoroptic mange (sheep scab) caused by the mite _Psoroptes ovis_ to be modeled within and between farms. Please see the papers listed in the "Citation" section for a more detailed description of the model. 

As the data used in these papers were provided to the authors under a data sharing agreement, these are not able to be uploaded with the code and therefore in order to use the model to run viable simulations, location and movement data for sheep holdings in the region of interest will need to be provided by the user. 

A simple r code demonstrating how you can run the model is provided called "Twonodesexample.R". This uses the default nodes() data built into SimInf and selects the first two animal holdings listed here to demonstrate. In order to use your own network of farms, please include these as nodes() in the same format as the default nodes() data. You can set the distance cut off point at which sheep scab can spread between contiguous farms by changing the "cutoff =" argument in d_ik. The units for this are in metres. 
To implement movements of sheep between holdings, an events object must be produced as described in https://doi.org/10.18637/jss.v091.i12 

The parameters provided in the two nodes example are as estimated from the literature as described in Nixon et al. (2020) and Nixon et al. (2021) (see citations list), with the exception of upsilon, alpha and beta which are the mean result from the posterior distribution in Nixon et al.(2021) when using Sequential Monte Carlo Approximate Bayesian Computation to fit the model to reported outbreaks of sheep scab in Great Britain from 1973-1992. The full dataset for the posterior distribution may be uploaded in the future, however, it is recommended that users consider doing their own model fitting once the model has been calibrated with their bespoke location and movement data. 

## Install
Currently the model can not be installed as a package, although this document will be updated when this changes.

In order to install, please download the zip file which contains the model code and the R code for running the model ("Twonodesexample.r") 

In your terminal, change directory until you are in the folder ScabModel/SimInf 

Then type "make install" into the terminal 

This will compile and install the model locally 

When opening up a new R session type 
```{r, eval = FALSE} 
library(SimInf)
```

If you have the original SimInf package installed already, you may experience some issues and so it may be best to uninstall this while using ScabModel and then reinstall the next time that you want to use it. 

## Authors

Emily Nixon [![ORCID
iD](https://orcid.org/sites/default/files/images/orcid_16x16.gif)](https://orcid.org/0000-0002-1626-9296),
**(Maintainer)**

Any suggestions, bug reports, forks and pull requests are
appreciated. Get in touch: emily.nixon@bristol.ac.uk 

## Citation

ScabModel is research software. To cite ScabModel in publications, please cite the package with Dr Emily Nixon as the author and the original publication which describes the model:

Nixon, E.J., Brooks-Pollock, E., Wall, R. (2021). Sheep scab transmission: a spatially explicit dynamic metapopulation model. _Veterinary Research_ Doi: 10.1186/s13567-021-00924-y 

Other papers that use this code:

Nixon, E.J., Brooks-Pollock, E., Wall, R. (2021) Sheep scab transmission: a spatially explicit dynamic metapopulation model. Veterinary Research, 52:54. https://doi.org/10.1186/s13567-021-00924-y 

Nixon, E.J., Brooks Pollock, E., Wall, R. (2022). Assessing the effectiveness of prophylactic treatment strategies for sheep scab. Veterinary Parasitology. https://doi.org/10.1016/j.vetpar.2022.109822

(movement_paper branch) Lihou, K., Wall R., Nixon, E. (In press). Treatment of sheep prior to movement: its contribution to an effective scab (psoroptic mange) management strategy.

An early version of ScabModel is described in Emily's thesis - Modelling the epidemiology and economics of sheep scab in Great Britain, University of Bristol. The package has been adapted since submission of this thesis. 

To cite the original SimInf package use:

- Widgren S, Bauer P, Eriksson R, Engblom S (2019) SimInf: An R
  Package for Data-Driven Stochastic Disease Spread Simulations.
  Journal of Statistical Software, 91(12), 1--42. doi:
  [10.18637/jss.v091.i12](https://doi.org/10.18637/jss.v091.i12)

- Bauer P, Engblom S, Widgren S (2016) Fast event-based
  epidemiological simulations on national scales. International
  Journal of High Performance Computing Applications, 30(4),
  438--453. doi:
  [10.1177/1094342016635723](https://doi.org/10.1177/1094342016635723)

## Acknowledgments

This work was financially supported by the Biotechnology and Biological Sciences Research Council-funded South West Biosciences Doctoral Training Partnership [training grant reference BB/M009122/1] and the Veterinary Medicines Directorate (Antiparasitic resistance: Sheep scab: VM0545). Thank you to Stefan Widgren, the corresponding author for SimInf for his assistance and permission to provide his code that I have adapted. Thank you to Ellen Brooks Pollock and Richard Wall who supervised this project.

## License

The `ScabModel` package is licensed under the
[GPLv3](https://github.com/stewid/SimInf/blob/master/LICENSE)
as is the original `SimInf` package

# SimInf
To find out more information about the original SimInf package, please visit their website https://www.siminf.org  
