# 01 - RJDemetra - Introduction ----

# The RJDemetra R package is available on:
# - CRAN: https://cran.r-project.org/package=RJDemetra
# - GitHub: https://github.com/jdemetra/rjdemetra
# - Website: https://jdemetra.github.io/rjdemetra/


## Setup ----

# The package is on CRAN but depends on the `rJava` package

# Installation manual: https://github.com/jdemetra/rjdemetra/wiki/Installation-manual

# Call `utils::sessionInfo()` to see which version of R you have installed
sessionInfo()
# I use the 64-bit version on Windows 11

# Call `usethis::edit_r_environ()` to open your `.Renviron` file.

# Save the path to the Java Development Kit (`jdk`) as an 
# environment variable called "JAVA_HOME".

# Then restart your R session

# Check if it worked
Sys.getenv("JAVA_HOME")

# install.packages("rJava")
library(rJava)
# No error!

.jinit()
.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
# "21.0.2+13-LTS-58"

# install.packages("RJDemetra")
library(RJDemetra)

citation("RJDemetra")


## Basic example ----

# To seasonally adjust a time series with a pre-defined specification,
# use either the `x13()` function for the X-13-ARIMA method or
# the `tramoseats()` function for the TRAMO-SEATS method.

colnames(ipi_c_eu)

my_series <- ipi_c_eu[ , "FR"]

# X-13-ARIMA method
x13_model <- x13(series = my_series)

x13_model


# TRAMO-SEATS method
ts_model <- tramoseats(series = my_series)
ts_model


# Basic plot with the original series, the trend and the 
# seasonally-adjusted (SA) series
png(filename = "figures/01_fr-ipi-sa.png", height = 400, width = 800)
plot(x13_model, type_chart = "sa-trend")
dev.off()


# S-I ratio
png(filename = "figures/02_fr-ipi-siratio.png", height = 400, width = 800)
plot(x13_model$decomposition)
dev.off()

# END