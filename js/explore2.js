// Write a function that takes a string and reverses it
// declare a variable to store reversed string
// set count in for loop
// while string length is greater than count iterate through string and print out each letter
// add letter to string
// decrement count
// return reversed string
// ex: "hello" -> "olleh"

function reverseString(str) {
  var reversedString = "";
  for (var i = str.length - 1; i >= 0; i--) {
    reversedString += str[i]
  }
  return reversedString
}

console.log(reverseString("bollocks"));

num1 = 5
num2 = 4

if (num1 + num2 == 9) {
  console.log(reverseString("bollocks"));
}