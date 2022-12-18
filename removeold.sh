# how many vidoes shall be kept
keep=NUMVIDS
# how many videos are there
totcount=$( ls *.flv | wc -l)

echo 'total number of vids:' $totcount

# get difference, how many videos to delete 
countdel=$(($totcount-$keep))
echo 'delete last' $countdel 'videos'
# list of .flv videos to be deleted
todel=$(ls -t *.flv | tail -$countdel)
echo $todel
# handle error if there is nothing to delete
if [ $countdel = 0 ]
then
    echo 'nothing to delete'
else
    rm $todel
fi

