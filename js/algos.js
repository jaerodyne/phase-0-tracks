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
// check if name in one key-value pair matches name in another key-value pair
// check if age in one key-value pair matches age in another key-value pair
// ex: {name: "Steven", age: 54} and {name: "Tamir", age: 54} match because their age is the same


// console(firstPerson[name] = value) == (secondPerson[name] = value)

// var firstPerson = {name: "jill", age: 52, gender:"female"};
// var secondPerson = {age: 12, name: "amanda", gender: "female"};

// for (var i = 0; firstPerson == secondPerson; i++)


// var tamir = {name: "Tamir", age: 54}

// var matched = true


// function personalInfo(name, age) {
//   this.name = name;
//   this.age = age;
//   for (var i in name) {
//     if (name.hasOwnProperty(i))
//     console.log(name[i]);
//   }
// }

// var names = personalInfo({name: "Steven", age: 54}, {name: "Tamir", age: 54})
// console.log(steven.name)
// console.log(steven.age)
// console.log(tamir.name)
// console.log(tamir.age)

//compare name variable to other name variable
//loop through each age
//print each name, add to firstName hash

// firstName = {}
// secondName = {}

// firstName = {}
// firstAge = {}

// function personalInfo(person1, person2) {
//   for (var k in name) {
//     if (name.hasOwnProperty(k))
//       firstName[k] = name [k]
//       console.log(firstName)
//     for (var l in age) {
//       if (age.hasOwnProperty(l))
//         firstAge[l] = age[l]
//     }
//   }
// }

// var people = personalInfo({name: "Steven", age: 54}, {name: "Tamir", age: 54})

//write function that takes an integer for length and builds and returns an array of strings of the given length
//argument of 3 returns random array of 3 words
//ex: randomInt = 3 
//array = ["Lalala", "Derpaderp", "Yay"]
//words should be of random varying length, with minimum 1 letter and max 10 letters
//add driver code that generates array 10 times
//print array
//feed array to longest word function
//print result
//generate random number 

function randomize()
{
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";

    for( var i=0; i <= 10 ; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
}

console.log(randomize())

