suitcase = {
  documents: [
    'passport', 
    'boarding pass'
  ],
  clothes: {
    work: [
      'dress shirt',
      'pants', 
      'tie',
      'blazer'
    ],
    casual: [
      'hawaiian shirt',
      'bermuda shorts',
      'toga'
    ],
    pajamas:['tigger onesie']
  },
  toiletries: {
    optical: [
      'glasses', 
      'contacts', 
      'contacts lens case', 
      'contacts solution'
    ],
    hygiene: [
      'toothbrush',
      'toothpaste',
      'deodorant',
      'note that says steal hotel shampoo'
    ],
  },
  technology: [
    'go pro',
    'laptop',
    'smartphone',
    'usb charger',
    'lightning charger',
    'laptop charger'
  ],
}
p suitcase[:clothes][:pajamas][0]

p suitcase[:documents].push('Frequent Flyer Miles Card')

p suitcase[:toiletries][:optical]

p suitcase[:toiletries][:hygiene][3]

p suitcase[:technology]