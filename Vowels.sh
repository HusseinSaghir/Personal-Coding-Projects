file_contents=$(cat sampletext.txt | tr '[:upper:]' '[:lower:]')

total_characters=0
count_a=0
count_e=0
count_i=0
count_o=0
count_u=0

i=0
while (( i++ < ${#file_contents} )); do
    char="${file_contents:i-1:1}"
    ((total_characters++))

if [ "$char" == "a" ]; then
        ((count_a++))
    elif [ "$char" == "e" ]; then
        ((count_e++))
    elif [ "$char" == "i" ]; then
        ((count_i++))
    elif [ "$char" == "o" ]; then
        ((count_o++))
    elif [ "$char" == "u" ]; then
        ((count_u++))
    fi
done

echo "The total number of characters is $total_characters with $((count_a + count_e + count_i + count_o + count_u)) vowels."
echo "The breakdown of vowels (a,e,i,o,u) is $count_a a's, $count_e e's, $count_i i's, $count_o o's and $count_u u's."