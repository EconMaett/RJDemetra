# 01 - RJDemetra - Introduction ----

# The R package is available on:
# - CRAN: https://cran.r-project.org/package=RJDemetra
# - GitHub: https://github.com/jdemetra/rjdemetra
# - Website: https://jdemetra.github.io/rjdemetra/


## Setup ----

# The package is on CRAN but depends on the `rJava` package

# Installation manual: https://github.com/jdemetra/rjdemetra/wiki/Installation-manual

# To use `RJDemetra`, you need Java 8 or higher.

# Install this R version from a reliable source.
# https://www.java.com/download/ie_manual.jsp

# Get the path to Java
Sys.getenv("JAVA_HOME")

# Save this in your .Renviron file
usethis::edit_r_environ()

# Restart R

# install.packages("rJava")
library(rJava)

.jinit()
.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
# "1.8.0_401-b10"

# install.packages("RJDemetra")
library(RJDemetra)

citation("RJDemetra")

## Basic example ----

# To seasonally adjust a time series with a pre-defined specification,
# use either the `x13()` function for the X-13-ARIMA method or
# the `tramoseats()` function for the TRAMO-SEATS method.

str(ipi_c_eu)

my_series <- ipi_c_eu[ , "FR"]

# X-13-ARIMA method
x13_model <- x13(series = my_series)

x13_model


# TRAMO-SEATS method
ts_model <- tramoseats(series = my_series)
ts_model


# Basic plot with the original series, the trend and the 
# seasonally-adjusted (SA) series
plot(x13_model, type_chart = "sa-trend")
png(filename = "figures/01_fr-ipi-sa.png", height = 400, width = 800)
dev.off()


# S-I ratio
plot(x13_model$decomposition)
png(filename = "figures/02_fr-ipi-siratio.png", height = 400, width = 800)
dev.off()

# END