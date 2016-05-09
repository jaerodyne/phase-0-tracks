// take an array of words or phrases
// get total length of array
// loop gets length of word/phrase in each index based on array length
// store length of word in variable
// if word length is greater than current word length, reassign variable
// return longest word in the array

function longestWord(array) {
  this.array = array;
  var word = ''
  var count = 0
    for (var i = 0; array[i].length >= count; i++) {
     count = array[i].length
     word = array[i]
    }
  return console.log('And the winner is ' + word + ' with a length of ' + count + '!')
}

longestWord(['long phrase', 'longest phrase', 'longer phrase'])
longestWord(['supercalifragilisticexpialidocious', 'pneumonoultramicroscopicsilicovolcanoconiosis', 'yay'])
longestWord(['juxtaposition', 'enigma', 'transmogrification'])

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
//generate random number to get random word length
//push word into array for number of times given in argument
//add driver code that generates array 10 times
//print array
//feed array to longest word function
//print result

function randomArray(int) {
  
  this.int = int;

  var arr = []
  var word = "";
  var str_length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
 
  while (arr.length != int) {
    for ( var i=0; i < str_length ; i++ ) {
      word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
      }
     arr.push(word)
    }
  return arr
}  

var arr1 = new randomArray(3)
console.log(arr1)
longestWord(["try", "this", "one"])
var arr2 = new randomArray(3)
console.log(arr2)
var arr3 = new randomArray(3)
console.log(arr3)
var arr4 = new randomArray(3)
console.log(arr4)
var arr5 = new randomArray(3)
console.log(arr5)
var arr6 = new randomArray(3)
console.log(arr6)
var arr7 = new randomArray(3)
console.log(arr7)
var arr8 = new randomArray(3)
console.log(arr8)
var arr9 = new randomArray(3)
console.log(arr9)
var arr10 = new randomArray(3)
console.log(arr10)

