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
};
