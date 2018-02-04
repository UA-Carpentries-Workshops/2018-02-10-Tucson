for filename in U*.txt
do
    echo $filename
    cat $filename >> output_test.txt
done

mv output_test.txt ~/Desktop/
