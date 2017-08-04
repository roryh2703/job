# script to prepare files, from local -> arc

#   in case folder
sed -i -- 's+/usr/not-backed-up/cfd/job/functions/RunFunctions+/nobackup/scrh/cfd/job/functions/RunFunctions+g' Allrun
sed -i -- 's+/usr/not-backed-up/cfd/job/functions/foamRunTutorials+/nobackup/scrh/cfd/job/functions/foamRunTutorials+g' Allrun

cd functions
sed -i -- 's+/usr/not-backed-up/cfd/job/functions/RunFunctions+/nobackup/scrh/cfd/job/functions/RunFunctions+g' foamRunTutorials

cd ../lesFiles
sed -i -- 's+/usr/not-backed-up/cfd/job/functions/RunFunctions+/nobackup/scrh/cfd/job/functions/RunFunctions+g' Allrun
sed -i -- 's+/usr/not-backed-up/cfd/fixedMeanVal/libfixedMeanValue.so+/nobackup/scrh/libraries/libfixedMeanValue.so+g' controlDict

cd ../RAS
sed -i -- 's+/usr/not-backed-up/cfd/job/functions/RunFunctions+/nobackup/scrh/cfd/job/functions/RunFunctions+g' Allrun
sed -i -- 's+/usr/not-backed-up/cfd/job/functions/CleanFunctions+/nobackup/scrh/cfd/job/functions/CleanFunctions+g' Allclean

cd system
sed -i -- 's+/usr/not-backed-up/cfd/fixedMeanVal/libfixedMeanValue.so+/nobackup/scrh/libraries/libfixedMeanValue.so+g' controlDict

