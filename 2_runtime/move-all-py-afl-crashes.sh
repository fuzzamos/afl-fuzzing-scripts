#Usually you shouldn't use this script. Use afl-cmin -C instead! You have been warned
mkdir crashes; for i in input/*; do echo $i; py-afl-showmap -o out.txt -m 220 -t 600 ./reduced-afl.py < $i; EX=$?; if [ $EX -lt 0 ]; then echo "moving $i"; mv $i crashes/; else echo "exited with $EX"; fi; done;