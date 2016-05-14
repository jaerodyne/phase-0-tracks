meal_plan = {
  breakfast: {
  breakfast_options: [ 'omelette', 'pancakes'],
  omelette_ingredients: {
    "eggs" => 2,
    "spinach" => '1/2 cup',
    "mushrooms" => '1/2 cup',
    'cheese' => '1 block'
    },
  pancake_ingredients: {
    'eggs' => 3,
    'pancake mix' => '1 cup',
    'chocolate chips' => '1 cup',
    'milk' => '1/2 cup',
    'honey' => '1/2 tsp'
    }
  },
  lunch: {
    lunch_options: ['burger', 'salad'],
    burger_ingredients: { 
      'patties' => 2,
      'lettuce slice' => 1,
      'cheese' => 'pepper jack',
      'sauce' => 'A1',
      'extras' => 'guac'
    },
    salad_ingredients: {
      'lettuce head' => 1,
      'other greens' => 'spinach',
      'meat' => 'chicken',
      'extras' => 'avocado',
      'vinaigrette' => 'oil and balsamic vinegar'
    }
  },
  dinner: {
    dinner_options: ['lasagna', 'steak'],
    lasagna_ingredients: {
      'noodles' => '1 box',
      'cheese' => 'mozzarella',
      'sauce' => 'tomato',
      'spices' => 'fresh basil, oregano',
      'meat' => 'ground beef'
    },
    steak_ingredients: {
      'steak' => 'rib eye',
      'marinade' => 'dry rub secret',
      'baste' => 'garlic butter',
      'garnish' => 'chives'
    }
  }
}


meal_plan[:breakfast][:omelette_ingredients]['bacon strips'] = 2

puts meal_plan[:breakfast][:omelette_ingredients]

total_eggs = 
  meal_plan[:breakfast][:omelette_ingredients]['eggs'] +
  meal_plan[:breakfast][:pancake_ingredients]['eggs']

puts total_eggs

puts meal_plan[:lunch]

puts meal_plan[:dinner][:dinner_options]

