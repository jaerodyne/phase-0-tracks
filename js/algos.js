// take an array of words or phrases
// get total length of array
// loop gets length of word/phrase in each index based on array length
// store length of word in variable
// if word length is greater than current word length, reassign variable
// return longest word in the array

// function longestWord(array) {
//   var word = ''
//   var count = 0
//   for (var i = 0; array[i].length >= count; i++) {
//    console.log(count = array[i].length)
//    console.log(word = array[i])
// }
// return console.log('And the winner is ' + word + ' with a length of ' + count + '!')
// }


// longestWord(['long phrase', 'longest phrase', 'longer phrase'])
// longestWord(['supercalifragilisticexpialidocious', 'pneumonoultramicroscopicsilicovolcanoconiosis', 'yay'])
// longestWord(['juxtaposition', 'enigma', 'transmogrification'])

//write function that takes two objects and checks to see if they share at least one key-value pair
// compare first key-value pair to second key-value pair
// check if name in one key-value pair matches name in another key-value pair
// check if age in one key-value pair matches age in another key-value pair
// ex: {name: "Steven", age: 54} and {name: "Tamir", age: 54} match because their age is the same

// function personalInfo(person1, person2) {
//   this.person1 = person1;
//   this.person2 = person2;
//   var matched = false

//   if (person1.name == person2.name) {
//     matched = true;
//   } else if (person1.age == person2.age) {
//     matched = true;
//   } else {
//     matched = false;
//   }
//   console.log(matched)
//   return matched;
// }

// personalInfo({name: "Steven", age: 54}, {name: "Tamir", age: 54})
// personalInfo({name: "Alex", age: 54}, {name: "Alex", age: 12})
// personalInfo({name: "Jack", age: 4}, {name: "Tommy", age: 6})

//write function that takes an integer for length and builds and returns an array of strings of the given length
//therefore, an argument of 3 returns random array of 3 words
//ex: array = ["Lalala", "Derpaderp", "Yay"]
//words should be of random varying length, with minimum 1 letter and max 10 letters
//figure out how to push text into array
//add driver code that generates array 10 times
//print array
//feed array to longest word function
//print result
//generate random number 

var arr = []

function randomArray(int) {

  this.int = int;

  var word = "";
  var str_length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
 
  while (arr.length != int) {
    for ( var i=0; i < str_length ; i++ ) {
      word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    console.log(word)
    arr.push(word)
    
  }
return console.log(arr)
}

randomArray(3)

//     var word = "";
//     var str_length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
//     var alphabet = "abcdefghijklmnopqrstuvwxyz";

//     for ( var i=0; i < str_length ; i++ ) {
//         word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
//        }
//        return word;
// }

// for (var i = 0; i < int; i++) {
// arr.push(word);
// }

// function randomize() {

//     var word = "";
//     var str_length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
//     var alphabet = "abcdefghijklmnopqrstuvwxyz";

//     for ( var i=0; i < str_length ; i++ ) {
//         word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
//        }
//        return word;
// }

// console.log(randomize())

// function longestWord(array) {
//   var word = ''
//   var count = 0
//   for (var i = 0; array[i].length >= count; i++) {
//    console.log(count = array[i].length)
//    console.log(word = array[i])
// }
// return console.log('And the winner is ' + word + ' with a length of ' + count + '!')
// }
