% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculateEC50.R
\name{calculateEC50}
\alias{calculateEC50}
\title{calculateEC50}
\usage{
calculateEC50(idrc_set)
}
\arguments{
\item{idrc_set}{IncucyteDRCSet object}
}
\value{
IncucyteDRCSet object
}
\description{
Calculates the EC50s for the dose response curves in an IncucyteDRCSet object
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
exportEC50Data(test_idrc_set)

}

