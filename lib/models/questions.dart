class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "It is used to pour without spillage liquid or small-grained ingredients into containers with small openings. ",
    "options": ['Garlic Press', 'Grater', 'Funnel', 'Funnel'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "Used to peel off or remove skin of fruits and vegetables.",
    "options": ['Peeler', 'Grater', 'Scraper', 'Chef’s Knife'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "It is a cylindrical, deep, heavy-bottomed, straight-sided pot for preparing, cooking, and storing stocks, soups, and stews.",
    "options": ['Sauce pan', 'Stockpot', 'Casserole', 'Nonstick Pan'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question":
        "It is used to slice roasted meats, ham, and thick solid cuts of meat.",
    "options": ['Meat Slicer', 'Cleaver', 'Paring Knife', 'Dinner Knife'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question":
        "It is a heavy, thick-bottomed frying pan used when steady and even heat is needed in cooking.",
    "options": ['Sauce Pan', 'Wok or Carajay', 'Cast-iron Skillet', 'Baster'],
    "answer_index": 2,
  },
];

//KTE CATEGORY

//bpp

List bppDifficult_questions = [
  {
    "id": 1,
    // "question": Image.asset("lib/assets/rolling_pin.jpg"),
    "question":
        "Made of glass or metal containers for batter and dough with various sizes and shapes.",
    "options": [
      'Biscuit and Doughnut Cutter',
      'Strainer',
      'Baking Wares',
      'Muffin Pan'
    ],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question":
        "It comes in different sizes and shapes and may be round shapes rectangular or heart shaped.",
    "options": ['Tube Center Pan', 'Muffin Pan', 'Pop Over Pan', 'Cake Pan'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "It has a blade knife used to cut dough when making pastries.",
    "options": [
      'Pastry Wheel',
      'Kitchen Shears',
      'Cutting Tools',
      'Paring Knife'
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
        "It comes in graduated sizes and has sloping sides used for mixing ingredients.",
    "options": ['Grater', 'Mixing Bowl', 'Electric Mixer', 'Wire Whisk'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "A funnel shaped container of icing or whipped cream.",
    "options": ['Pastry Tip', 'Pastry Blender', 'Pastry Bag', 'Pastry Scraper'],
    "answer_index": 2,
  },
];

List bppHard_questions = [
  {
    "id": 1,
    "question":
        "Is a round pan with scalloped sides used for baking elegant and special cakes?",
    "options": ['Griddle Pan', 'Bundt Pan', 'Tube Center Pan', 'Pop Over Pan'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "Deeper than a round pan and with a hollow center, it is removable which is used to bake chiffon type cakes.",
    "options": [
      'Tube Center Pan',
      'Muffin Pan',
      'Pop Over Pan',
      'Jelly Roll Pan'
    ],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "It is made of metal wire that can make the food out of the oven cool.",
    "options": [' Cooling Rack', 'Pastry Mat', 'Baking Paper', 'Oven Mitts'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "It can help automate the repetitive tasks of stirring.",
    "options": ['Spatula', 'Electric Whisks', 'Electric Mixer', 'Wire Whisk'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question":
        "It has flat bottoms with ridges to keep the liquid or grease away from the food. It enables efficient baking and smooth cooking in bakery products.",
    "options": [
      'Muffin Pan',
      'Jelly Roll Pan',
      'Pop Over Pan',
      '  Griddle Pan'
    ],
    "answer_index": 3,
  },
];

//cookery

const List cookeryDifficult_questions = [
  {
    "id": 1,
    "question":
        "It is used to pour without spillage liquid or small-grained ingredients into containers with small openings. ",
    "options": ['Garlic Press', 'Grater', 'Funnel', 'Funnel'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "Used to peel off or remove skin of fruits and vegetables.",
    "options": ['Peeler', 'Grater', 'Scraper', 'Chef’s Knife'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "It is a cylindrical, deep, heavy-bottomed, straight-sided pot for preparing, cooking, and storing stocks, soups, and stews.",
    "options": ['Sauce pan', 'Stockpot', 'Casserole', 'Nonstick Pan'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question":
        "It is used to slice roasted meats, ham, and thick solid cuts of meat.",
    "options": ['Meat Slicer', 'Cleaver', 'Paring Knife', 'Dinner Knife'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question":
        "It is a heavy, thick-bottomed frying pan used when steady and even heat is needed in cooking.",
    "options": ['Sauce Pan', 'Wok or Carajay', 'Cast-iron Skillet', 'Baster'],
    "answer_index": 2,
  },
];

const List cookeryHard_questions = [
  {
    "id": 1,
    "question":
        "It is a large rectangular pan, often with a lid and a meat rack. It’s used to roast meat and fish.",
    "options": ['Sauce pan', 'Roasting Pan', 'Casserole', 'Nonstick Pan'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "It is an all-purpose knife used for chopping, slicing and mincing.",
    "options": [
      'Paring Knife',
      'Tourné Knife',
      'Chef’s Knife',
      'Boning/Filleting Knife'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "It’s an oval, four-sided or round dish or pan made of stainless steel, ceramic, or glass where food may be cooked and served.",
    "options": ['Sauce pan', 'Roasting Pan', 'Casserole', 'Nonstick Pan'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "It is used to chop, blend, mix, whip, puree, grate, liquefy all kinds of foods.",
    "options": ['Blenders', 'Whisks', 'Graters', ' Mixer'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question":
        "It comprises of any hand-held mostly made form silver that use for eating and serving food.",
    "options": ['Flatware / Cutlery', 'Crockery', ' Spoons', ' Forks'],
    "answer_index": 0,
  },
];

//DISH CATEGORY

//TRIVIA CATEGORY
const List easyTrivia_questions = [
  {
    "id": 1,
    "question":
        "In the Bicol Region, what ingredient do they use more commonly than in other parts of the Philippines?",
    "options": ['Garlic', 'Pork Belly', 'Bihon', 'Coconut Oil'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question":
        "What is the world’s most expensive spice is native to Southwest Asia?",
    "options": ['Cinnamon', 'Turmeric', 'Black Pepper', 'Saffron'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "What is the Filipino staple food?",
    "options": ['Lumpia', 'Sinigang', 'Rice', 'Adobo'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "What is a famous entrée made with leftover rice, garlic and onions?",
    "options": ['Biko', 'Sinigang', 'Pancit', 'Sinangag'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question":
        "Pizza is one the most popular foods in the world, and can be found almost everywhere. From which Italian city does the modern pizza originate?",
    "options": ['Florence', 'Rome', 'Naples', 'Palermo'],
    "answer_index": 2,
  },
];

const List difficultTrivia_questions = [
  {
    "id": 1,
    "question": "Who introduced the use of noodles in Filipino cooking?",
    "options": ['Japan', 'China', 'Thailand', 'Canada'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "Food historians claim that _____ of the Filipino dishes are of _____ origin.",
    "options": [
      '80%, Spanish',
      '80%, Japanese',
      '100%, Filipino',
      '90%, Spanish'
    ],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "Kimchi, commonly used in Korean meals, is a type of what?",
    "options": ['Legume', 'Candy', 'Rice', 'Pickle'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question":
        "What is the spicy and pungent condiment usually served with sushi and sashimi?",
    "options": [
      'Tomato Paste',
      'Red Kroeung Paste',
      'Yellow Soybean Paste',
      'Wasabi Paste'
    ],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question":
        "Italian cuisine is well known for its use of a diverse variety of what ingredient?",
    "options": ['Corn', 'Pasta', 'Soybean', 'Cheese'],
    "answer_index": 1,
  },
];

//hard trivia
const List hardTrivia_questions = [
  {
    "id": 1,
    "question": "What is the most eaten food in the world?",
    "options": ['Hamburger', 'Rice', 'Pasta', 'Pizza'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What country produces the most potatoes?",
    "options": ['China', 'United states', 'Ireland', 'Russia'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "What vegetable has varieties known as Bell Tower, Orobelle, and Jupiter?",
    "options": ['Onion', 'Pepper', 'Squash', 'Orange'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Which of these has the highest percentage of water?",
    "options": ['Lettuce', 'Celery', 'Squash', 'Cucumber'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question":
        "Which fruit is often used in vegan recipes to replace pulled pork?",
    "options": ['Ackee', 'Wood Apple', 'Jackfruit', 'Pineberries'],
    "answer_index": 2,
  },
];
