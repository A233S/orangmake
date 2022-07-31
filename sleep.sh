nohup bash sleep2.sh > log.txt &
echo "pkill -18 ${$}" > exit.sh
pkill -19 ${$}
