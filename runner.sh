sortlist="IS MS QS HS"
datalist="1000 2000 4000 8000 16000 32000 1000000"

for sort in $sortlist
do
    bin/NTU_sort -$sort inputs/5.case1.in outputs/5.case1.$sort.out
    for datanum in $datalist
    do
        echo "bin/NTU_sort -$sort inputs/${datanum}.case1.in outputs/${datanum}.case1.$sort.out"
        bin/NTU_sort -$sort inputs/${datanum}.case1.in outputs/${datanum}.case1.$sort.out
        echo "bin/NTU_sort -$sort inputs/${datanum}.case2.in outputs/${datanum}.case2.$sort.out"
        bin/NTU_sort -$sort inputs/${datanum}.case2.in outputs/${datanum}.case2.$sort.out
        echo "bin/NTU_sort -$sort inputs/${datanum}.case3.in outputs/${datanum}.case3.$sort.out"
        bin/NTU_sort -$sort inputs/${datanum}.case3.in outputs/${datanum}.case3.$sort.out
    done
done
