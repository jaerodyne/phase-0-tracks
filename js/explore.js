// For each letter in a given string, print starting from the last letter and go backwards until whole string is reversed.
// Store result in variable

// Example: headache == ehcadaeh

function reverse(str) {
  var reversedString = ""
  for (var i = str.length -1; i >= 0; i--) {
  reversedString += str[i]}
  return reversedString
}

console.log(reverse("headache"));