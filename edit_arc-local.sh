# script to prepare files, from arc -> local

#   in case folder
sed -i -- 's+/nobackup/scrh/cfd/job/functions/RunFunctions+/usr/not-backed-up/cfd/job/functions/RunFunctions+g' Allrun
sed -i -- 's+/nobackup/scrh/cfd/job/functions/foamRunTutorials+/usr/not-backed-up/cfd/job/functions/foamRunTutorials+g' Allrun

cd functions
sed -i -- 's+/nobackup/scrh/cfd/job/functions/RunFunctions+/usr/not-backed-up/cfd/job/functions/RunFunctions+g' foamRunTutorials

cd ../lesFiles
sed -i -- 's+/nobackup/scrh/cfd/job/functions/RunFunctions+/usr/not-backed-up/cfd/job/functions/RunFunctions+g' Allrun
sed -i -- 's+/nobackup/scrh/libraries/libfixedMeanValue.so+/usr/not-backed-up/cfd/fixedMeanVal/libfixedMeanValue.so+g' controlDict

cd ../RAS
sed -i -- 's+/nobackup/scrh/cfd/job/functions/RunFunctions+/usr/not-backed-up/cfd/job/functions/RunFunctions+g' Allrun
sed -i -- 's+/nobackup/scrh/cfd/job/functions/CleanFunctions+/usr/not-backed-up/cfd/job/functions/CleanFunctions+g' Allclean

cd system
sed -i -- 's+/nobackup/scrh/libraries/libfixedMeanValue.so+/usr/not-backed-up/cfd/fixedMeanVal/libfixedMeanValue.so+g' controlDict
