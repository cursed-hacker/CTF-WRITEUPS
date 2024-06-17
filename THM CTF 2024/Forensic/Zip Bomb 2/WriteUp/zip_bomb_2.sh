#/bin/bash

echo "THMCTF{1m_r34lly_50rry_bu7_7h15_15_n07_7h3_r34l_fl46}" > flag.txt

rand1=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13 | echo)

echo "$rand1"

zip -r -P $rand1 $rand1.zip flag.txt

for i in $(seq 1 500)
do
        if [ $i -eq 264 ]
        then
                echo "THMCTF{c0n6r47ul4710n5_n0_m0r3_z1p_f1l35_n0w}" > flag.txt

        else
                echo "THMCTF{1m_r34lly_50rry_bu7_7h15_15_n07_7h3_r34l_fl46}" > flag.txt
        fi

	rand2=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13)

        zip -r -P $rand2 $rand2.zip $rand1.zip flag.txt
        rm -rf $rand1.zip
	rand1=$rand2
done

rm flag.txt
