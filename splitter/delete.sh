for file in *.bed
do
	sed 's/"//g' $file --in-place
done

