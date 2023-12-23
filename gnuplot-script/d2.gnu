set title "Top 10 des conducteurs avec le plus de km parcourus"
set xlabel "Conducteurs"
set ylabel "Nombre de km"
set datafile separator ';'
set style data histograms
set style fill solid border -1
set yrange [*:*]
set xrange [*:*]
set ytics nomirror 
set xtics nomirror
set xtics rotate by -45
set grid y
set boxwidth 0.5 relativ
set terminal pngcairo size 1920,1080 enhanced font 'Arial,12'
set output './graph_output/top_distances_conducteurs.png'
plot "./temp/top_distances_conducteurs.csv" using (2*$0+1):1:xticlabels(2)  with boxes lc rgb "skyblue" notitle