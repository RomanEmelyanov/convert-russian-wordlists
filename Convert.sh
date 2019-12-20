# https://github.com/danakt/russian-words
# https://en.wikipedia.org/wiki/Romanization_of_Russian
# https://hashcat.net/wiki/doku.php?id=table_lookup_attack
# https://github.com/hashcat/hashcat-legacy/tree/master/tables

./hashcat-cli64.bin --attack-mode 5 --table-file=keyboard.en_ru1.cp1251.table --stdout wordlist.txt | tr -d '#' > wordlist_translit.txt
./hashcat-cli64.bin --attack-mode 5 --table-file=keyboard.en_ru2.cp1251.table --stdout wordlist.txt | tr -d '#' > wordlist_keyboard.txt