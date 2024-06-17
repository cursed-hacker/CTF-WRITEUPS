#/bin/bash

for i in $(seq 1 500)
do
	if [ $i -eq 470 ]
	then
		echo "THMCTF{1_w45_r16h7_7h15_15_n07_4_z1p_b0mb}" > flag.txt

	else
		echo "THMCTF{1m_r34lly_50rry_bu7_7h15_15_n07_7h3_r34l_fl46}" > flag.txt
	fi

	zip -r -P bomb$i bomb$i.zip bomb$((i-1)).zip flag.txt
	rm -rf bomb$((i-1)).zip
done
