filename="$1"

awk 'NR == 4' "$filename" | grep -q '[!-/]'
if [ $? -eq 0 ]; then
  	echo "Phred 33"
else
	echo "Phred 64"
fi
