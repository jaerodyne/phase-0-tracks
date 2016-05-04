// take an array of words or phrases
// get total length of array
// loop gets length of word/phrase in each index based on array length
// store length of word in variable
// if word length is greater than current word length, reassign variable
// return longest word in the array

function longestWord(array) {
  var word = ''
  var count = 0
  for (var i = 0; array[i].length >= count; i++) {
   console.log(count = array[i].length)
   console.log(word = array[i])
}
return console.log('And the winner is ' + word + ' with a length of ' + count + '!')
}

longestWord(['long phrase', 'longest phrase', 'longer phrase'])

longestWord(['supercalifragilisticexpialidocious', 'pneumonoultramicroscopicsilicovolcanoconiosis', 'yay'])

longestWord(['juxtaposition', 'enigma', 'transmogrification'])
