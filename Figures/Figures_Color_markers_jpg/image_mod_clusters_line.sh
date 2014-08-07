array=( AB CD)

for (( c=0; c<=1; c++ ))
do
  image=${array[$c]}
  
  echo ${image}
  
#   resize images
  convert Figure6_${image}_conf_interval_hourlypattern_weekdays.jpg -resize 80% ./resized/Figure6_${image}_conf_interval_hourlypattern_weekdays_resized.jpg
  convert Figure6_${image}_conf_interval_hourlypattern_weekend.jpg -resize 80% ./resized/Figure6_${image}_conf_interval_hourlypattern_weekend_resized.jpg

#   put side by side
  convert +append ./resized/Figure6_${image}_conf_interval_hourlypattern_weekdays_resized.jpg ./resized/Figure6_${image}_conf_interval_hourlypattern_weekend_resized.jpg ./resized/side/Figure6_${image}_color_resized.jpg 

done 
