array=( AB CD EF GH )
array2=( ABCD EFGH)
indexfin=0;

for (( c=0; c<=3; c+=2 ))
do
  index_image1=${array[$c]}
  echo ${index_image1}
  
  index_image2=${array[$c+1]}
  echo ${index_image2}
  
  index_image_fin=${array2[$indexfin]}
  echo ${index_image_fin}
  
  
#   put side by side
  convert -append Figure2_${index_image1}_BW_resized.jpg Figure2_${index_image2}_BW_resized.jpg ./side2/Figure2_${index_image_fin}_BW_resized.jpg 

  ((indexfin++))
  echo ${indexfin}
done 


convert -append ./side2/Figure2_ABCD_BW_resized.jpg ./side2/Figure2_EFGH_BW_resized.jpg ./side2/Figure2_ABCDEFGH_BW_resized.jpg 
convert -append /side2/Figure2_ABCDEFGH_BW_resized.jpg ./side2/Figure2_IJ_BW_resized.jpg ./side2/Figure2_ABCDEFGHIJ_BW_resized.jpg 
