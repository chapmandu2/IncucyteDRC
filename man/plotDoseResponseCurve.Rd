% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDoseResponseCurve.R
\name{plotDoseResponseCurve}
\alias{plotDoseResponseCurve}
\title{plotDoseResponseCurve}
\usage{
plotDoseResponseCurve(idrc_set, sampleid, native = FALSE)
}
\arguments{
\item{idrc_set}{IncucyteDRCSet object}

\item{sampleid}{The sample id to plot}

\item{native}{deprecated}
}
\value{
a ggplot2 object (if native is FALSE) or NULL but draws to open graphics object (if native is TRUE)
}
\description{
Plots the dose response curve for a given sample id from an IncucyteDRCSet object
}
\examples{
pm_file <- system.file(file='extdata/example.PlateMap', package='IncucyteDRC')
test_pm <- importPlatemapXML(pm_file)
data_file <- system.file(file='extdata/example_data.txt', package='IncucyteDRC')
test_data <- importIncucyteData(data_file, metric='pc')

test_list <- splitIncucyteDRCPlateData(test_pm, test_data, group_columns='growthcondition')

print(test_list)

test_idrc_set <- fitGrowthCurvesGrouped(test_list[[2]])
test_idrc_set <- fitGrowthCurvesIndividual(test_idrc_set)
test_idrc_set <- calculateDRCData(test_idrc_set, cut_time=100)
test_idrc_set <- fitDoseResponseCurve(test_idrc_set)
test_idrc_set <- calculateEC50(test_idrc_set)
plotDoseResponseCurve(test_idrc_set, 'PDD00017273', native=FALSE)
}

