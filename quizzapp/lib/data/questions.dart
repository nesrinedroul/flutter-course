import '../models/question_model.dart';

final questions = {
  'Science': [
    Question(
      text: 'What planet is known as the Red Planet?',
      options: ['Earth', 'Mars', 'Jupiter', 'Venus'],
      correctIndex: 1,
    ),
    Question(
      text: 'What is the chemical symbol for water?',
      options: ['H2O', 'CO2', 'O2', 'NaCl'],
      correctIndex: 0,
    ),
    Question(
      text: 'What is the powerhouse of the cell?',
      options: ['Nucleus', 'Mitochondria', 'Ribosome', 'Endoplasmic Reticulum'],
      correctIndex: 1,
    ),

    Question(
      text: 'What gas do plants absorb from the atmosphere?',
      options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
      correctIndex: 1,
    ),
  ],
  'History': [
    Question(
      text: 'Who was the first president of the USA?',
      options: ['Abraham Lincoln', 'George Washington', 'Obama', 'Trump'],
      correctIndex: 1,
    ),
  ],
  'Math': [
    Question(
      text: 'What is the value of Pi?',
      options: ['3.14', '2.71', '1.41', '1.62'],
      correctIndex: 0,
    ),
    Question(
      text: 'What is the square root of 64?',
      options: ['6', '7', '8', '9'],
      correctIndex: 2,
    ),
  ],
  'Geography': [
    Question(
      text: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctIndex: 2,
    ),
    Question(
      text: 'Which continent is known as the Dark Continent?',
      options: ['Asia', 'Africa', 'Europe', 'Australia'],
      correctIndex: 1,
    ),
  ],
  'Literature': [
    Question(
      text: 'Who wrote "Romeo and Juliet"?',
      options: ['Mark Twain', 'Charles Dickens', 'William Shakespeare', 'Ernest Hemingway'],
      correctIndex: 2,
    ),
    Question(
      text: 'What is the first book of the Bible?',
      options: ['Genesis', 'Exodus', 'Leviticus', 'Numbers'],
      correctIndex: 0,
    ),
  ],
  'Sports': [
    Question(
      text: 'Which country won the FIFA World Cup in 2018?',
      options: ['Germany', 'Brazil', 'France', 'Argentina'],
      correctIndex: 2,
    ),
    Question(
      text: 'What is the highest score in a single cricket match?',
      options: ['300', '400', '500', '600'],
      correctIndex: 3,
    ),
  ],
  'General Knowledge': [
    Question(
      text: 'What is the capital of Japan?',
      options: ['Tokyo', 'Seoul', 'Beijing', 'Bangkok'],
      correctIndex: 0,
    ),
    Question(
      text: 'What is the largest mammal in the world?',
      options: ['Elephant', 'Blue Whale', 'Giraffe', 'Great White Shark'],
      correctIndex: 1,
    ),
  ],

  'Technology': [
    Question(
      text: 'What does CPU stand for?',
      options: ['Central Processing Unit', 'Computer Personal Unit', 'Central Processor Unit', 'Computer Processing Unit'],
      correctIndex: 0,
    ),
    Question(
      text: 'What is the main function of RAM in a computer?',
      options: ['Storage', 'Processing', 'Temporary Data Storage', 'Input'],
      correctIndex: 2,
    ),
  ],
  'Entertainment': [
    Question(
      text: 'Who directed the movie "Inception"?',
      options: ['Christopher Nolan', 'Steven Spielberg', 'Martin Scorsese', 'Quentin Tarantino'],
      correctIndex: 0,
    ),
    Question(
      text: 'What is the highest-grossing film of all time?',
      options: ['Avatar', 'Titanic', 'Star Wars: The Force Awakens', 'Avengers: Endgame'],
      correctIndex: 3,
    ),
  ],
};

