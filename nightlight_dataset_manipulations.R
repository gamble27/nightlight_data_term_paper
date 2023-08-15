library(nightlightstats)

nightlight_download(
    area_names = "Ukraine", 
    time=c("2004", "2006"), 
    light_location = "~/Projects/ml_ulm/nightlights/light"
)

download.file(
  "http://thematicmapping.org/downloads/TM_WORLD_BORDERS_SIMPL-0.3.zip" , 
  destfile="~/Projects/ml_ulm/nightlights/shape/world_shape_file.zip"
)
system("unzip ~/Projects/ml_ulm/nightlights/shape/world_shape_file.zip")

nightlight_calculate(
    area_names = "Ukraine", 
    shapefile_location = "~/Projects/ml_ulm/nightlights/shape",
    light_location = "~/Projects/ml_ulm/nightlights/light",
    time = c("2004","2006"), 
    admlevel = 1
)
nightlight_plot(
    area_names = "Ukraine",
    time = "2004",
    shapefile_location = "~/Projects/ml_ulm/nightlights/shape",
    light_location = "~/Projects/ml_ulm/nightlights/light",
    admlevel = 1
)
