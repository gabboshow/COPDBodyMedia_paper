array=( AB CD EF GH IJ)

for (( c=0; c<=4; c++ ))
do
  image=${array[$c]}
  
  echo ${image}
  
#   resize images
  convert Figure2_${image}_hourlypattern_weekdays.jpg -resize 80% ./resized/Figure2_${image}_hourlypattern_weekdays_resized.jpg
  convert Figure2_${image}_hourlypattern_weekend.jpg -resize 80% ./resized/Figure2_${image}_hourlypattern_weekend_resized.jpg

#   put side by side
  convert +append ./resized/Figure2_${image}_hourlypattern_weekdays_resized.jpg ./resized/Figure2_${image}_hourlypattern_weekend_resized.jpg ./resized/side/Figure2_${image}_BW_resized.jpg 

done 
