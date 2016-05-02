// For each letter in a given string, print starting from the last letter and go backwards until whole string is reversed.
// Store result in variable

// Example: headache == ehcadaeh

// var str = "headache";
// var reversed_string = " ";

function reverse(str) {
  var reversed_string = ""
  for (var i = str.length; i >= 0; i--) {
  reversed_string = str[i] + reversed_string;
  }
  return reversed_string;
}

console.log(reverse("headache"));