var horseNames = ['The Hoofster', 'Sir Hoofington', 'Ed', 'charlie']; 

var colors = ['red', 'blue', 'green', 'yellow'];
 
horseNames.push('The Big Hoof');
colors.push('magenta');

console.log(colors);
console.log(horseNames);

var fullOnHorseStuff = [];

for (var i = 0; i < horseNames.length; i++) {
  fullOnHorseStuff.push({
    name: horseNames[i],
    color: colors[i]
  })
}

console.log(fullOnHorseStuff)

function Car(color, yearsOld, isTasty) {
  this.color = color;
  this.yearsOld = yearsOld;
  this.isTasty = isTasty;
  
  this.start = function() {
    console.log("I'ma start now, k thx bye!");
  };
}

var mazda = new Car("blue", 10, true);
console.log(mazda);
mazda.start();

var batmobile = new Car("black", "who knows it's a secret", true);
batmobile.start();

var popeMobile = new Car("The Holiest", "Since the dawn of time.", true);
popeMobile.start();