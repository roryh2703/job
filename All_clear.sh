#    resets the case file back to blank

rm -rf LES
rm -rf RAS/processor* RAS/0 RAS/log.*
cd postProcessing && ./clean_directory.sh && cd ..

