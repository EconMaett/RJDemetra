# RJDemetra: Interface to 'JDemetra+' Seasonal Adjustment Software

Interface around 'JDemetra+' (<https://github.com/jdemetra/jdemetra-app>), the seasonal adjustment software officially recommended to the members of the European Statistical System (ESS) and the European System of Central Banks. 

It offers full access to all options and outputs of 'JDemetra+', including the two leading seasonal adjustment methods TRAMO/SEATS+ and X-12ARIMA/X-13ARIMA-SEATS.

JDemetra+ is an open source, platform independent, extensible software for seasonal adjustment (SA) and other related time series problems developed by the National Bank of Belgium in cooperation with the Deutsche Bundesbank and Eurostat.

The RJDemetra package is available on [CRAN](https://cran.r-project.org/package=RJDemetra), [GitHub](https://github.com/jdemetra/rjdemetra), and [the package website](https://jdemetra.github.io/rjdemetra/).

It depends on the rJava package which is hosted on [CRAN](https://cran.r-project.org/package=rJava), [GitHub](https://github.com/s-u/rJava) and [the package website](http://www.rforge.net/rJava/).

Follow the instructions on the blog post by Jorge Cimentada titled [Installing rJava on Windows 10](https://cimentadaj.github.io/blog/2018-05-25-installing-rjava-on-windows-10/installing-rjava-on-windows-10/).

Please follow the [official documentation of JDemetra+](https://jdemetradocumentation.github.io/JDemetra-documentation/) for technical details.

New R packages are currently being developed that are available at [https://github.com/rjdemetra](https://github.com/rjdemetra).

The Bundesbank [Discussion paper 24/2023: Karsten Webel, Anna Smyk "Towards seasonal adjustment of infra-monthly time series with JDemetra+" (04.09.2023|24/2023)](https://www.bundesbank.de/resource/blob/915460/e0c29d7a79c28c3b48cdc0b07f1e3a64/mL/2023-09-04-dkp-24-data.pdf) provides an overview over these new R packages.

## Citation

Quartier-la-Tente A, Michalek A, Palate J, Baeyens R
(2023). _RJDemetra: Interface to 'JDemetra+' Seasonal
Adjustment Software_. R package version 0.2.4,
<https://CRAN.R-project.org/package=RJDemetra>.