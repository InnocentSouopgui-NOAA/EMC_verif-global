help([[
Load environment to run EMC_verif-global on S4 using Intel
]])

prepend_path("MODULEPATH", "/data/prod/jedi/spack-stack/spack-stack-1.6.0/envs/unified-env/install/modulefiles/Core")

prepend_path("MODULEPATH", "/data/prod/glopara/contrib/spack1.6/modulefiles")

--
-- Get module version from the environment or set default
--
local     met_ver = os.getenv(    "MET_version") or "9.1"
local metplus_ver = os.getenv("METplus_version") or "3.1"
--
local            stack_intel_ver = os.getenv(           "stack_intel_ver") or "2021.5.0"
local stack_intel_oneapi_mpi_ver = os.getenv("stack_intel_oneapi_mpi_ver") or "2021.5.0"
--
local       hdf_ver = os.getenv( "hdf_ver") or "4.2.15"
local      hdf5_ver = os.getenv("hdf5_ver") or "1.14.0"
--
local          netcdf_c_ver = os.getenv(      "netcdf_c_ver") or "4.9.2"
local        netcdf_cxx_ver = os.getenv(    "netcdf_cxx_ver") or "4.3.1"
local    netcdf_fortran_ver = os.getenv("netcdf_fortran_ver") or "4.6.1"
--
local   zlib_ver = os.getenv(  "zlib_ver") or "1.2.13"
local libpng_ver = os.getenv("libpng_ver") or "1.6.37"
local jasper_ver = os.getenv("jasper_ver") or "2.0.32"
local wgrib2_ver = os.getenv("wgrib2_ver") or "2.0.8"
--
local           python_ver = os.getenv(          "python_ver") or "3.10.13"
local py_netcdf4_local_ver = os.getenv("py_netcdf4_local_ver") or "1.5.8"
local         py_numpy_ver = os.getenv(        "py_numpy_ver") or "1.22.3"
local        py_pandas_ver = os.getenv(       "py_pandas_ver") or "1.5.3"
local    py_matplotlib_ver = os.getenv(   "py_matplotlib_ver") or "3.7.3"
local       py_cartopy_ver = os.getenv(      "py_cartopy_ver") or "0.21.1"
--
local      bufr_ver = os.getenv(   "bufr_ver") or "12.0.1"
local       gsl_ver = os.getenv(    "gsl_ver") or "2.7.1"
local   hdfeos2_ver = os.getenv("hdfeos2_ver") or "2.20"
local       g2c_ver = os.getenv(    "g2c_ver") or "1.6.4"
-- local     grads_ver = os.getenv(  "grads_ver") or "2.2.1"
--
local grib_util_ver = os.getenv("grib_util_ver", "1.3.0")
local prod_util_ver = os.getenv("prod_util_ver", "2.1.1")
local       nco_ver = os.getenv(      "nco_ver", "5.0.6")
--
-- Load modules
--
load(pathJoin(           "stack-intel",            stack_intel_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_intel_oneapi_mpi_ver))
--
load(pathJoin(           "hdf",            hdf_ver))
load(pathJoin(          "hdf5",           hdf5_ver))
--
load(pathJoin(      "netcdf-c",       netcdf_c_ver))
load(pathJoin(   "netcdf-cxx4",     netcdf_cxx_ver))
load(pathJoin("netcdf-fortran", netcdf_fortran_ver))
--
load(pathJoin(          "zlib",           zlib_ver))
load(pathJoin(        "libpng",         libpng_ver))
load(pathJoin(        "jasper",         jasper_ver))
load(pathJoin(        "wgrib2",         wgrib2_ver))
--
load(pathJoin(          "python",           python_ver))
load(pathJoin("py-netcdf4-local", py_netcdf4_local_ver))
load(pathJoin(        "py-numpy",         py_numpy_ver))
load(pathJoin(       "py-pandas",        py_pandas_ver))
load(pathJoin(   "py-matplotlib",    py_matplotlib_ver))
load(pathJoin(      "py-cartopy",       py_cartopy_ver))
--
load(pathJoin(          "bufr",           bufr_ver))
load(pathJoin(           "gsl",            gsl_ver))
load(pathJoin(       "hdfeos2",        hdfeos2_ver))
load(pathJoin(           "g2c",            g2c_ver))
--
load(pathJoin(     "prod_util",      prod_util_ver))
load(pathJoin(     "grib-util",      grib_util_ver))
load(pathJoin(           "nco",            nco_ver))
--
load(pathJoin(    "MET",     met_ver))
load(pathJoin("METplus", metplus_ver))

