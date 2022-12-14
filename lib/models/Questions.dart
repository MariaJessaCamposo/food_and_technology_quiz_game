class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {
        required this.id,
      required this.question,
      required this.answer,
      required this.options});
}
const List sample_data = [
  {
    "id": 1,
    "question":
    "In the Bicol Region, what ingredient do they use more commonly than in other parts of the Philippines?",
    "options": ['Bombay', 'Pork Belly', 'Bihon', 'Coconut Oil'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Food historians claim that _____ of the Filipino dishes are of _____ origin.",
    "options": ['80%, Spanish', '80%, Japanese', '100%, Filipino', '90%, Spanish'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "What is the Filipino staple food?",
    "options": ['Lumpia', 'Sinigang', 'Rice', 'Adobo'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Who introduced the use of noodle in Filipino cooking?",
    "options": ['Japan', 'China', 'Thailand', 'Canada'],
    "answer_index": 1,
  },
];

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
    "question": "What is the world’s most expensive spice is native to Southwest Asia?",
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
    "question": "What is a famous entrée made with leftover rice, garlic and onions?",
    "options": ['Biko', 'Sinigang', 'Pancit', 'Sinangag'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Pizza is one the most popular foods in the world, and can be found almost everywhere. From which Italian city does the modern pizza originate?",
    "options": ['Florence', 'Rome', 'Naples', 'Palermo'],
    "answer_index": 2,
  },
];

