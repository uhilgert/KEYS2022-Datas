grep "\b1992\b" GapMinderDataAll.txt > 1992_data.txt  ## extracts 1992 data
sed -i 's/ /-/g' 1992_data.txt  ## replaces empty spaces with dashes ‘-’
sort -k6 -b -n 1992_data.txt > 1992_sortedbyGDP.txt  ## sorts by column 6 = ‘gdpPercap’
head -10 1992_sortedbyGDP.txt > 10_poorest_countries_1992.txt  ## get 10 first
tail -10 1992_sortedbyGDP.txt | sort -k6bnr > 10_richest_countries_1992.txt  ## get 10 last in reverse order

