
PAGE=page1
INPUT=$PAGE.txt
OUTPUT=$PAGE.out.txt
echo > $OUTPUT
cat $INPUT | xargs -n1 | while read word; do
    echo Processing $word;
    curl -s "http://www.dictionary.com/browse/${word}?s=t" > "word_${word}.html";
    raw=$(grep '<audio> <source' "word_${word}.html");
    if [ "$?" -ne 0 ]; then
        echo AUDIO TAG NOT FOUND;
        continue;
    fi;
    final=$(echo "$raw" | grep -o '<audio>.*</audio>' | sed 's/<audio/<audio controls/')
    echo -e \'$final\'"\t"$word >> $OUTPUT
done


raw='       <div class="audio-wrapper cts-disabled"> <audio> <source src="http://static.sfdict.com/staticrep/dictaudio/lunawav/A00/A0012700.ogg" type="audio/ogg"> <source src="http://static.sfdict.com/staticrep/dictaudio/A00/A0012700.mp3" type="audio/mpeg"> </audio> <div class="speaker"></div></div>            <h3 class="head-entry-variants"></h3>'

Words not found:

PAGE-1
Processing aerolithology
AUDIO TAG NOT FOUND
Processing aerosonde
AUDIO TAG NOT FOUND
Processing fronds
AUDIO TAG NOT FOUND
Processing ranine
AUDIO TAG NOT FOUND

PAGE-2
Processing astronauts
AUDIO TAG NOT FOUND
Processing sciolous
AUDIO TAG NOT FOUND
Processing seashells
AUDIO TAG NOT FOUND


PAGE-3
Processing beings
AUDIO TAG NOT FOUND
Processing caffeinic
AUDIO TAG NOT FOUND
Processing slippers
AUDIO TAG NOT FOUND

PAGE-4
Processing casts
AUDIO TAG NOT FOUND
Processing lemmings
AUDIO TAG NOT FOUND
Processing libraries
AUDIO TAG NOT FOUND
Processing manga
AUDIO TAG NOT FOUND
Processing subfulgent
AUDIO TAG NOT FOUND


PAGE-5
Processing nucleic
AUDIO TAG NOT FOUND
Processing opacate
AUDIO TAG NOT FOUND
Processing ustion
AUDIO TAG NOT FOUND

PAGE-6
Processing Einstein
AUDIO TAG NOT FOUND

PAGE-7
Processing Fahrenheit
AUDIO TAG NOT FOUND
Processing Xanadu
AUDIO TAG NOT FOUND
Processing years
AUDIO TAG NOT FOUND

