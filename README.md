# raster_timing
Scripts for timing tests of raster compression

These are scripts used to test timing of alternative compressions
to bslz4, in particular bszstd.

Prerequisites:

The scripts assume the availability of silx-kit/hdf5plugin,
h5py and dials3 and is oreinted towards eiger 9M images.

Scripts:

timing_run.bash dataset

is the top level script that calls timing2.bash for 96,
64, 32, 16, 8, 4, 2 qnd 1 threads and lz4, bslz4, zstd at compression
levels 2, 3, 4, 5 and 6 and bszstd at compression levels 2, 3, 4, 5 and 6.

timing2.bash passlimit dataset compression

is the second level working script which accepts an non-negative number of
threads as passlimit, a dataset name in dataset and a compression in
compression.  In this version the datasets are assumed to be folders in
/dev/shm/Raster_4_AMX_COmpression_Tests beginning with the 
characters 103, 104, 105, 106, 107, 108, or 109.  Except in the 1-thread
case, in order to generate enough load for meaningful multiprocessor tests
this job calls both onejob and otherjob in parallel with each other.

onejob file compression
otherjob file compression

each expect a data file (i.e. with an h5 extension) and a compression.
This version of the scripts assume both onejob and otherjob have been
placed in $HOME/bin.  These scripts assume h5recompress.py and
h5otherrecompress.py have been placed in $HOME/bin

h5recompress.py basename compression clevel
h5recompress.py basename compression clevel
  
expect the image file basename in basename (i.e. the filename with the
.h5 stripped), thee compression in compression, and the compression
level, if any, in clevel

-- H. J. Bernstein (hbernstein@bnl.gov)
   21 November 2022

