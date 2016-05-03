// For each letter in a given string, print starting from the last letter and go backwards until whole string is reversed.
// Store result in variable

// Example: headache == ehcadaeh

var str = "headache";
var reversedString = ""

// function reverse(str) {
//   var reversed_string = "";
  for (var i = str.length -1; i >= 0; i--) {
  reversedString += str[i]}


  console.log(reversedString);
// }

// console.log(reverse("headache"));

// for (var count = 10; count >= 0; count--) {
//     console.log(count)
// }