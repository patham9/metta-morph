time sh runmetta.sh $1 > OUTPUT_METTA
cat OUTPUT_METTA
time sh runscheme.sh $1 > OUTPUT_SCHEME
cat OUTPUT_SCHEME
(cmp OUTPUT_METTA OUTPUT_SCHEME > /dev/null && echo "==") || echo "!="
