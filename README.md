# quiet_planet
NASA COVID APP Challenge


## FTP Rain conditions
https://sharaku.eorc.jaxa.jp/GSMaP/

https://sharaku.eorc.jaxa.jp/GSMaP/csv/out20200531064630_st2020050101_ed2020053101_regionNum174_12_67.csv


When you access through ftp software;
Address: hokusai.eorc.jaxa.jp
UID: rainmap
PW: Niskur+1404

When you access through web browser (IE11 and Firefox.);
* Google Chrome and IE-Edge are not available.
ftp://rainmap:Niskur+1404@hokusai.eorc.jaxa.jp/

After logged-in, there are several directories containing different GSMaP products. There are some documents (README, algorithm history and format description) under each directory.
Please read them in advance if you use the stored dataset.

Directories:
/now
   ... GSMaP_NOW (real-time version, 0-hr data latency, since March 2017)

/realtime (/realtime_ver/v6)
   ... GSMaP_NRT (near-real-time version Ver.6, 4-hr data latency,
       since March 2000)
   ... GSMaP_Gauge_NRT (near-real-time version with gauge-calibration
       Ver.6, 4-hr data latency, since April 2000)

/realtime_ver/v7
   ... GSMaP_NRT (near-real-time version Ver.7, 4-hr data latency,
       since January 2017)
   ... GSMaP_Gauge_NRT (near-real-time version with gauge-calibration
       Ver.7, 4-hr data latency, since January 2017)

/realtime_ver/v5
   ... GSMaP_NRT (near-real-time version Ver.5, a period from October
       2008 to September 2014)

/standard/v6
   ... GSMaP_MVK (standard version Ver.6, 3-day data latency, since
       March 2014)
   ... GSMaP_Gauge (standard with gauge-calibration Ver.6, 3-day data
       latency, since March 2014)When you access through ftp software;
Address: hokusai.eorc.jaxa.jp
UID: rainmap
PW: Niskur+1404

When you access through web browser (IE11 and Firefox.);
* Google Chrome and IE-Edge are not available.
ftp://rainmap:Niskur+1404@hokusai.eorc.jaxa.jp/

After logged-in, there are several directories containing different GSMaP products. There are some documents (README, algorithm history and format description) under each directory.
Please read them in advance if you use the stored dataset.

Directories:
/now
   ... GSMaP_NOW (real-time version, 0-hr data latency, since March 2017)

/realtime (/realtime_ver/v6)
   ... GSMaP_NRT (near-real-time version Ver.6, 4-hr data latency,
       since March 2000)
   ... GSMaP_Gauge_NRT (near-real-time version with gauge-calibration
       Ver.6, 4-hr data latency, since April 2000)

/realtime_ver/v7
   ... GSMaP_NRT (near-real-time version Ver.7, 4-hr data latency,
       since January 2017)
   ... GSMaP_Gauge_NRT (near-real-time version with gauge-calibration
       Ver.7, 4-hr data latency, since January 2017)

/realtime_ver/v5
   ... GSMaP_NRT (near-real-time version Ver.5, a period from October
       2008 to September 2014)

/standard/v6
   ... GSMaP_MVK (standard version Ver.6, 3-day data latency, since
       March 2014)
   ... GSMaP_Gauge (standard with gauge-calibration Ver.6, 3-day data
       latency, since March 2014)
   ... GSMaP_RNL (reanalysis version Ver.6, a period from March 2000
       to February 2014)
   ... GSMaP_Gauge_RNL (reanalysis with gauge-calibration Ver.6,
       a period from March 2000 to February 2014)

/standard/v7
   ... GSMaP_MVK (standard version Ver.7, 3-day data latency,
       since March 2014)
   ... GSMaP_Gauge (standard with gauge-calibration Ver.7, 3-day
       data latency, since March 2014)

/standard/v5
   ... GSMaP_MVK (standard version Ver.5, a period from March 2000
       to November 2010)
   ... GSMaP_Gauge (standard with gauge-calibration Ver.5,
       a period from March 2000 to November 2010)

/climate
... GSMaP_CLM (statistics based on near-real-time version with gauge-calibration
       Ver.6 since April 2000)

/riken_nowcast
  ... GSMaP_RNC (GSMaP RIKEN nowcast data by the RIKEN/AICS Data
      Assimilation Research Team from August 2017)

Algorithm versions 5, 6 and 7 of GSMaP near-real-time and standard products were released in October 2008, September 2014 and January 2017, respectively. Please note that the longest data record is available in version 6.

While the JAXA G-Portal ( https://www.gportal.jaxa.jp/ ) provides HDF formatted data of the GSMaP_NRT, GSMaP_MVK, GSMaP_Gauge products as GPM product version 04, this ftpsite provides binary or text formatted data of them (corresponding to algorithm version 7).

The GSMaP_RNC is provided by the Data Assimilation Research Team, RIKEN Center for Computational Science (https://weather.riken.jp/index_en.html).
Please contact the RIKEN Data Assimilation Research Team (da-team-desk@ml.riken.jp) for questions related to GSMaP_RNC.

For any other questions, please contact the TRMM Real-Time Office (Z-trmm_real@ml.jaxa.jp).
   ... GSMaP_RNL (reanalysis version Ver.6, a period from March 2000
       to February 2014)
   ... GSMaP_Gauge_RNL (reanalysis with gauge-calibration Ver.6,
       a period from March 2000 to February 2014)

/standard/v7
   ... GSMaP_MVK (standard version Ver.7, 3-day data latency,
       since March 2014)
   ... GSMaP_Gauge (standard with gauge-calibration Ver.7, 3-day
       data latency, since March 2014)

/standard/v5
   ... GSMaP_MVK (standard version Ver.5, a period from March 2000
       to November 2010)
   ... GSMaP_Gauge (standard with gauge-calibration Ver.5,
       a period from March 2000 to November 2010)

/climate
... GSMaP_CLM (statistics based on near-real-time version with gauge-calibration
       Ver.6 since April 2000)

/riken_nowcast
  ... GSMaP_RNC (GSMaP RIKEN nowcast data by the RIKEN/AICS Data
      Assimilation Research Team from August 2017)

Algorithm versions 5, 6 and 7 of GSMaP near-real-time and standard products were released in October 2008, September 2014 and January 2017, respectively. Please note that the longest data record is available in version 6.

While the JAXA G-Portal ( https://www.gportal.jaxa.jp/ ) provides HDF formatted data of the GSMaP_NRT, GSMaP_MVK, GSMaP_Gauge products as GPM product version 04, this ftpsite provides binary or text formatted data of them (corresponding to algorithm version 7).

The GSMaP_RNC is provided by the Data Assimilation Research Team, RIKEN Center for Computational Science (https://weather.riken.jp/index_en.html).
Please contact the RIKEN Data Assimilation Research Team (da-team-desk@ml.riken.jp) for questions related to GSMaP_RNC.

For any other questions, please contact the TRMM Real-Time Office (Z-trmm_real@ml.jaxa.jp).




## https://apps.sentinel-hub.com
OAUTH e:?z9zC-I*Kl^A?C|hUY8q>5+uZ^]7!-|KTem9X}
https://services.sentinel-hub.com/ogc/wms/34760d69-e0bc-484e-95f9-61837d917eea




HdfEos Index Page Banner Image
HOME
EXAMPLES
SOFTWARE
WORKSHOPS
FORUM
HELP
Search
Submit


R
R is a free software environment for statistical computing and graphics. It has a rich set of packages that can access NASA HDF products. To access HDF, you can use 3 different R packages.

ncdf4: This package works for both HDF4 and HDF5.
rgdal: This package works for both HDF4 and HDF5. This is convenient for datasets that have the characteristics of raster images and for data conversion between HDF and GeoTIFF.
h5: This package works only for HDF5.
Download
You can download the latest R from here. You will need the following ncdf4 R source package to build with the custom libraries that enhance the access of NASA HDF products.

ncdf4_1.15.tar.gz R package source.
rgdal and h5 package will work without source customization so you don't have to download R source packages.

Installation
Package installation is case-sensitive.

NCDF4
The default installation of ncdf4 doesn't support reading HDF4 because netCDF library is not built with HDF4 support. For example, if you open an HDF4 file, you will get the following error message.


  Error in R_nc4_open: NetCDF: Attempt to use feature that was not turned on when netCDF was built.
In such case, you can build netCDF library with --enable-hdf4 configuration from source and build ncdf4 R package from source. If --enable-hdf4 configuration option fails when you configure netCDF-C library, try to set the following environment variable options assuming that both HDF4 and JPEG libraries are installed under /usr/local.


$export CFLAGS='-L/usr/local/include'  
$export LDFLAGS='-L/usr/local/lib -ljpeg'
Once netCDF library that can support HDF4 is installed, you can build ncdf4 R package from source.

>install.packages("ncdf4_1.15.tar.gz", repos = NULL, type="source")
The above command may not work on Mac OS X Mavericks with the following error message.

** testing if installed package can be loaded
Error in dyn.load(file, DLLpath = DLLpath, ...) :
  unable to load shared object '/Library/Frameworks/R.framework/Versions/3.3/Resources/library/ncdf4/libs/ncdf4.so':
  dlopen(/Library/Frameworks/R.framework/Versions/3.3/Resources/library/ncdf4/libs/ncdf4.so, 6): Symbol not found: _nc_close
  Referenced from: /Library/Frameworks/R.framework/Versions/3.3/Resources/library/ncdf4/libs/ncdf4.so
  Expected in: flat namespace
 in /Library/Frameworks/R.framework/Versions/3.3/Resources/library/ncdf4/libs/ncdf4.so
Error: loading failed  
For such case, please decompress the ncdf4 R package source and edit PKG_LIBS line in ncdf4/src/Makevars.in as follows.

## PKG_LIBS=@NETCDF_LDFLAGS@    
PKG_LIBS=-L/usr/local/lib -lnetcdf -ljpeg -lmfhdf -ldf -lhdf5_hl -lhdf5 -ldl -lm -lz -lcurl
Then, build the package again and install it.

$ R CMD build ncdf4
$ R CMD INSTALL ncdf4_1.15.tar.gz
RGDAL
To maximize the usability of NASA HDF products, we recommend you to use a special GDAL library called GEE from NASA. Please read carefully how to build GDAL with HDF4 support. Once you installed the GEE, build and install rgdal from source package by issuing the following command at the R prompt.


>install.packages('rgdal', type='source')
H5
At the R prompt, run the following command to install binary package.


>install.packages('h5')
On Unix systems, h5 package may be installed from source after compilation. h5 package is based on HDF5 C++ bindings. Thus, make sure that your HDF5 library is built with --enable-cxx configuration option.

Usage
NCDF4
To use ncdf4, the first step is to include the package.


>library(ncdf4)
To open a NASA HDF file, use nc_open() call with path to the file name.


>nc <- nc_open('AIRS.2003.02.05.L3.RetStd_H001.v6.0.12.0.G14112124328.hdf')
To list available datasets in HDF file, type the assigned variable name.


>nc
File AIRS.2003.02.05.L3.RetStd_H001.v6.0.12.0.G14112124328.hdf (NC_FORMAT_NETCDF4):

     770 variables (excluding dimension variables):
        short TotalCounts_A[XDim:ascending,YDim:ascending]   (Contiguous storage)  
            _FillValue: 0
        float SurfPres_Forecast_A[XDim:ascending,YDim:ascending]   (Contiguous storage)  
...
To retrieve data from dataset, use ncvar_get().


>v1 <- nc$var[['Temperature_MW_A']]
>z_all <- ncvar_get(nc, v1)
If you access HDF4 dataset, it is necessary to change endianness using readBin() because ncdf4 doesn't do it for you. You don't need the following conversion for HDF5 dataset.


>zv <- as.vector(as.single(z_all))
>zz <- file("tmpbin", "wb")
>writeBin(zv, zz)
>close(zz)
>zz2 <- file("tmpbin", "rb")
>zs <- readBin(zz2, numeric(), size=4, length(zv), endian="little")
>close(zz2)
>dim(zs) <- dim(z_all)
To retrieve the value of attribute of a dataset, use ncatt_get().


>fillvalue <- ncatt_get(nc, v1, "_FillValue")
RGDAL
To use rgdal, the first step is to include the package and other geospatial helper packages.


>library(rgdal)
>library(gdalUtils)
>library(raster)
To open a NASA HDF file, use get_subdatasets() with path to the file name.


>sds <- get_subdatasets('NASAHDF/FLASH_TISA_Terra+Aqua_Version3A_113011.20140513.hdf')
To list available datasets in HDF file, type the assigned variable name.


>sds
 Geospatial Data Abstraction Library extensions to R successfully loaded
 Loaded GDAL runtime: GDAL 2.2.0dev, released 2016/99/99
 Path to GDAL shared files: /opt/hdfeos/share/gdal
 Loaded PROJ.4 runtime: Rel. 4.8.0, 6 March 2012, [PJ_VERSION: 480]
 Path to PROJ.4 shared files: (autodetected)
 Linking to sp version: 1.2-3
  [1] "HDF4_SDS:UNKNOWN:/home/hyoklee/FLASH_TISA_Terra+Aqua_Version3A_113011.20140513.hdf:0"
  [2] "HDF4_SDS:UNKNOWN:/home/hyoklee/FLASH_TISA_Terra+Aqua_Version3A_113011.20140513.hdf:1"
  ...

In the above output, the version number and release date of GDAL runtime look strange because we use GEE from NASA.
To retrieve data from dataset, use readGDAL().


>d5 <- readGDAL(sds[6], options=c("RASTERXDIM=4","RASTERYDIM=3","RASTERBDIM=2","RASTER4DIM=1","RASTER5DIM=0"))
The RASTERXDIM, ..., RASTER4DIM options allow you to access 5-dimensional dataset and they are available only in GEE. If you use regular GDAL, you cannot access the dataset correctly.

Once data is retrieved correctly using GEE, you can assign it as a raster image and manipulate data for visualization and analysis.


>r <- raster(d5)
H5
To use R h5 package, the first step is to include the package.


>library(h5)
To open a NASA HDF file, use h5file() with path to the file name.


>file <- h5file('NASAHDF/SMAP_L3_SM_P_20151012_R11920_001.h5', 'r')
To list available datasets in HDF5 file, type the assigned variable name.


>list.datasets(file, recursive=TRUE)
To retrieve data from dataset in a group, use readDataSet().


>dset <- file['/Soil_Moisture_Retrieval_Data/soil_moisture']
>vals <- readDataSet(dset)
To retrieve the value of attribute of a dataset, use h5attr().


>fv <- h5attr(dset, "_FillValue")
VISUALIZATION
R provides rich graphics packages for data visualization. There are three common feature types in HDF-EOS - grid, swath, and point. We will provide a few examples of visualizing them.

To plot grid data like figure below, you can follow the AIRS L3 comprehensive example.


To plot swath data like figure below, you can follow the AIRS L2 comprehensive example.


To plot point data using symbols like figure below, you can follow the OCO2 comprehensive example.


See Also
Comprehensive Examples
GDAL
Apache Spark

Last modified: 06/02/2017
About Us | Contact Info | Archive Info | Disclaimer
Sponsored by Subcontract number 4400528183 under Raytheon Contract number NNG15HZ39C, funded by NASA / Maintained by The HDF Group



VARIABLES

/HDFEOS/SWATHS/ColumnAmountNO2/Data Fields
AmfStrat (Stratospheric air mass factor)
AmfTropClear (Clear-sky tropospheric air mass factor)
AmfTropCloudy (Cloudy-sky tropospheric air mass factor)
CloudFraction (Effective cloud fraction)
CloudFractionStd (Effective cloud fraction precision)
CloudPressure (Effective cloud pressure)
CloudPressureStd (Effective cloud pressure precision)
CloudRadianceFraction (Fraction of the radiance from the cloudy part)
SmallPixelRadiance (Radiance of small pixel data column)
SmallPixelRadiancePointer (Offset and count of nTimesSmallPixel wrt nTimes)
TerrainHeight (Terrain height at for center co-ordinate of the ground pixel)
TerrainPressure (Pressure of the center of the ground pixel)
TerrainReflectivity (Reflectivity of the ground pixel)
TropopausePressure (Pressure of the tropopause)
VcdApBelowCloud (A priori below-cloud vertical column density of nitrogen dioxide)
VcdApStrat (A priori stratospheric vertical column density of nitrogen dioxide)
VcdApTrop (A priori tropospheric vertical column density of nitrogen dioxide)


/HDFEOS/SWATHS/ColumnAmountNO2/Geolocation Fields
FoV75CornerLatitude (Corner Latitudes for 75% Field of View Pixels on the WGS-85 Ellipsoid (CCW relative to flight direction: LL,LR,UR,UL))
SpacecraftAltitude (Altitude above WGS84 ellipsoid)
SpacecraftLatitude (Geodetic Latitude above WGS84 ellipsoid)
SpacecraftLongitude (Geodetic Longitude above WGS84 ellipsoid)
