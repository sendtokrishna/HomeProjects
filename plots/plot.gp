set terminal png
set output 'graph.png'
set boxwidth 1 
set xrange [-1:7]
set yrange [1:50]
set title '%CPU vs Read IO size'
set ylabel '%CPU consumption'
set xlabel 'IO size'
set xtics ("512B" 0, "4KB" 1, "8KB" 2, "64KB" 3, "256KB" 4)
set style histogram clustered gap 2
set style data histograms 
set style fill solid border -1 
set key autotitle columnheader
#plot 'data.txt' using 1:2 title 'cpuA', '' using 1:3 title 'cpuB'
#plot 'data.txt' using 2 title 'cpuA', '' using 3:xtic(1) title 'cpuB'
#plot 'data.txt' using 2 title 'cpuA', '' using 3 title 'cpuB'
plot 'data.txt' using 2, '' using 3
