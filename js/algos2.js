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

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair
// compare object1 and object2
// iterate through each object's keys and values
// access value in each object using key
// if a value in object1 matches a value in object2, return true
// else if nothing matches, return false
// ex: {name: "Steven", age: 54} and {name: "Tamir", age: 54} returns true because the ages are the same

function matched(obj1, obj2) {
  for (var value in obj1) {
      firstValue = obj1[value];
    for (value in obj2) {
    	secondValue = obj2[value];
	    	if (firstValue === secondValue) {
    			console.log(firstValue + ' has found its soulmate ' + secondValue);
    			return true;
    		} else {
    	}
	 }
  }
  return false;
}

matched({name: "Steven", age: 54}, {name: "Tamir", age: 54})
matched({color: "black", number: 5}, {color: "black", number: 6})
matched({animal: "puppy", cute: true}, {animal: "cat", cute: true})

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length
// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters
// Create an empty array to store randomized words
// Randomize the length of a word and its characters using a-z
// Until integer length is reached, generate words and push into array
// Return the array

function randomArray(int) {
  
  var arr = [];
  var word = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
 
  while (arr.length < int) {
    for ( var i=0; i < Math.floor(Math.random() * (10 - 1 + 1)) + 1 ; i++ ) {
      word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
      }
     arr.push(word)
     word = "";
    }
  return arr
}

randomArray(3)
