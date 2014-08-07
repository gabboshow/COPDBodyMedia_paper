array=( A B C D)

for (( c=0; c<=3; c++ ))
do
  image=${array[$c]}
  
  echo ${image}
  
#   resize images
  convert Figure5_${image}_clusters.png -resize 80% ./resized/Figure5_${image}_clusters_resized.jpg


done 

#   put side by side
  convert +append ./resized/Figure5_A_clusters_resized.jpg ./resized/Figure5_B_clusters_resized.jpg ./resized/side/Figure5_AB_color_resized.jpg 
  convert +append ./resized/Figure5_C_clusters_resized.jpg ./resized/Figure5_D_clusters_resized.jpg ./resized/side/Figure5_CD_color_resized.jpg 
