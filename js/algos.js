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
//compare first key-value pair to second key-value pair
// check if name in one key-value pair matches name in another key-value pair
// check if age in one key-value pair matches age in another key-value pair
// ex: {name: "Steven", age: 54} and {name: "Tamir", age: 54} match because their age is the same

// console(firstPerson[name] = value) == (secondPerson[name] = value)

// var firstPerson = {name: "jill", age: 52, gender:"female"};
// var secondPerson = {age: 12, name: "amanda", gender: "female"};



// var names = personalInfo({name: "Steven", age: 54}, {name: "Tamir", age: 54})
// console.log(steven.name)
// console.log(steven.age)
// console.log(tamir.name)
// console.log(tamir.age)

  // for var k in Object.keys(person1, person2) {
  //   if person1[k] = person2[k];
  //     return true;
  // }

// var matched = false


  // console.log(Object.keys(person1, person2))
  //     console.log('This is' + (name[k] = person1[k]))
  //     matched = true;
  // for (var a in person2) {
  //   if (person2.hasOwnProperty(a));
  //   matched = true;
  //   console.log(name[k] = person2[k])
    // }
  //   for (var l in age) {
  //     if (age.hasOwnProperty(l))()
  //       firstAge[l] = age[l]
  //   }
    
  // return matched;

// steven = {}
// tamir = {}

// function personalInfo(person1, person2) {
//   this.person1 = person1;
//   this.person2 = person2;
//   for (var k in person1) {
//     console.log(k)
  //   var subObj = person1[k];
  //   for (var data = subObj) {
  //     console.log(data)
  //   }
  // }
//   for (var key in person1) {  
//     if (person1.hasOwnProperty(key)) {
//         var subObj = person1[key];
//         for (var subKey in subObj) {
//             if (subObj.hasOwnProperty(subKey)) {
//                 console.log(subKey);
//             }
//         }
//     }
// }
// }
// }
// function personalInfo(person1, person2) {
//   this.person1 = person1;
//   this.person2 = person2;
//   for (var k in person1) {
//     if (person1.hasOwnProperty(k)) {
//       // if (!person2.hasOwnProperty(k)) return false;
//       if (person1[k] != person2[k]) return false;
//       }
//     }
//  for (var i in person2) {
//     if (person2.hasOwnProperty(i)) {
//       // if (!person1.hasOwnProperty(i)) return false;
//       if (person1[i] != person2[i]) return false;
//       }
//     }
// return true;


// }

// var person1 = personalInfo ({name: "Steven", age: 54} )
// var person2 = personalInfo ({name: "Tamir", age: 54})

//write function that takes an integer for length and builds and returns an array of strings of the given length
//therefore, an argument of 3 returns random array of 3 words
//ex: randomInt = 3 
//array = ["Lalala", "Derpaderp", "Yay"]
//words should be of random varying length, with minimum 1 letter and max 10 letters
//add driver code that generates array 10 times
//print array
//feed array to longest word function
//print result
//generate random number 

function randomize() {
    var text = "";
    var str_length = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
    var alphabet = "abcdefghijklmnopqrstuvwxyz";

    for( var i=0; i < str_length ; i++ ) {
        text += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
}
    return text;
}


console.log(randomize())


