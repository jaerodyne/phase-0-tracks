// write a function that takes an array of words and returns the longest word
// store current count in a variable
// store current word in a variable
// while i is less than the array length
// iterate through array and count the length of each word
// if length of current word is shorter than the next word, next word becomes the current word and current word length is logged in count
// else, break loop

function longestWord(array) {
	var word = ''
	var count = 0
		for (i = 0; i < array.length; i++ ) {
			if (array[i].length > count) {
				word = array[i];
				count = word.length;
			} else {
				break;
			}
		}
	return console.log('And the longest word is ' + word + '!')
}

longestWord(['long word', 'longest word', 'longer word'])
longestWord(['laryngitis', 'curly', 'moe'])
longestWord(['semi-automatic', 'onamatopoeia', 'incapicitated'])