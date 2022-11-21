import sys
import numpy
import h5py
import hdf5plugin
import shutil
import time
import os
import subprocess

home=os.environ.get('HOME')
scratch="/dev/shm"    # the scratch directory, preferably ram disk
h5repack=os.path.join(home,bin,"h5repack")+" "  # call to h5repack
h5dump_pH=os.path.join(home.bin."h5dump") -pH " # call to h5dump -pH
xbasename=sys.argv[1] # the basename without the h5 extension
oldname=xbasename+".h5"
compression=sys.argv[2] # the new compression
if len(sys.argv) > 3:
  clevel=sys.argv[3]
else:
  clevel="2" 
if compression.lower()=="zstd":
    compression="zstd"
elif compression.lower()=="bszstd":
    compression="bszstd"
elif compression.lower()=="lz4":
    compression="lz4"
elif compression.lower()=="bslz4":
    compression="bslz4"
elif compression.lower()=="blosclz4":
    compression="blosclz4"
elif compression.lower()=="bloscbslz4":
    compression="bloscbslz4"
else:
    print(" invalid compression choice: "+compression)
    exit(1)
newname=os.path.join(scratch,xbasename+"_"+compression+"_"+clevel+".h5")
repackname=os.path.join("scratch,xbasename+"_"+compression+"_"+clevel+"_repack.h5")
print(" converting '"+oldname+"' to '"+newname+"'")
shutil.copyfile(oldname, newname)

with h5py.File(newname, 'r+') as hf: ## open in read/write mode
    try:
      myentry = hf['entry']
    except:
      print(" failed to find entry group ")
      hf.close()
      exit(1)
    try:
      mydatagroup = myentry["data"]
    except:
      print(" failed to find entry/data group ")
      hf.close()
      exit(1)
    try:
      mydatadataset = mydatagroup["data"]
      mydatasatesetattrs = mydatagroup["data"].attrs
      print(mydatadataset)
      mydata = numpy.copy(mydatadataset[:])
      del mydatagroup["data"] ## deleting dataset!

      t1=time.process_time()
      ### write with hdf5plugin
      if compression=="zstd":
        mydatagroup.create_dataset(
        'data',
        data=mydata,chunks=( 1, 3269, 3110 ),
        **hdf5plugin.Blosc(cname='zstd', clevel=clevel, shuffle=hdf5plugin.Blosc.NOSHUFFLE))
      elif compression=="bszstd":
        mydatagroup.create_dataset(
        'data',
        data=mydata,chunks=( 1, 3269, 3110 ),
        **hdf5plugin.Blosc(cname='zstd', clevel=clevel, shuffle=hdf5plugin.Blosc.SHUFFLE))
      elif compression=="lz4":
        mydatagroup.create_dataset(
        'data',
        data=mydata,chunks=( 1, 3269, 3110 ),
        **hdf5plugin.LZ4(nbytes=0))
      elif compression=="bslz4":
        mydatagroup.create_dataset(
        'data',
        data=mydata,chunks=( 1, 3269, 3110 ),
        **hdf5plugin.Bitshuffle(nelems=0, lz4=True))
      elif compression=="blosclz4":
        mydatagroup.create_dataset(
        'data',
        data=mydata,chunks=( 1, 3269, 3110 ),
        **hdf5plugin.Blosc(cname='lz4', clevel=clevel, shuffle=hdf5plugin.Blosc.NOSHUFFLE))
      elif compression=="bloscbslz4":
        mydatagroup.create_dataset(
        'data',
        data=mydata,chunks=( 1, 3269, 3110 ),
        **hdf5plugin.Blosc(cname='lz4', clevel=clevel, shuffle=hdf5plugin.Blosc.SHUFFLE))
      else:
        print(" unrecognized compression on write ")
        hf.close()
        exit(1)
      t2=time.process_time()
      print( "recompression time: ", t2-t1)
    except:
      print(" failed to get the data dataset")
    hf.close()
    os.system(h5repack+newname+" "+repackname)
    os.system("rm "+newname)
    os.system(h5dump_pH+repackname+"|grep ' SIZE'")
    os.system("ls -alt "+repackname)
    os.system("rm "+repackname)

