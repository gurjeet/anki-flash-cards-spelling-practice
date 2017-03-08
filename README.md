# Create AnkiWeb decks for Spelling Bee with voice prompt

Create a page full of words; see `page1.txt` for an example. Set the `$PAGE`
environment variable in a terminal, as shown at the top of the script. Then
paste in terminal the rest of the script shown in `script.sh`.

This will produce a corresponding `$PAGE.out.txt` file. Use the `Import File`
feature in Anki's desktop client. You may add it to an existing deck or a new
deck.

Each of the resulting cards contains HTML tag to show an audio player on the
front of the deck, and the correspondig word behind the card.
