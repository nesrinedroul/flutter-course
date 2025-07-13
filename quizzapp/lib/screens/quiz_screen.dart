import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../models/question_model.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String category;

  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Question> quizQuestions;
  int currentIndex = 0;
  int score = 0;
  bool answered = false;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    quizQuestions = questions[widget.category]!;
  }

  void checkAnswer(int index) {
    setState(() {
      selectedIndex = index;
      answered = true;
      if (quizQuestions[currentIndex].correctIndex == index) {
        score++;
      }
    });
  }

  void nextQuestion() {
    if (currentIndex < quizQuestions.length - 1) {
      setState(() {
        currentIndex++;
        answered = false;
        selectedIndex = null;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultScreen(score: score, total: quizQuestions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = quizQuestions[currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFF1F7FF),
      appBar: AppBar(
        title: Text(widget.category),
        backgroundColor: const Color(0xFF004080),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  q.text,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(q.options.length, (i) {
              Color? color;
              if (answered) {
                if (i == q.correctIndex) {
                  color = Colors.green[300];
                } else if (i == selectedIndex) color = Colors.red[300];
              }

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  tileColor: color,
                  title: Text(q.options[i]),
                  onTap: answered ? null : () => checkAnswer(i),
                ),
              );
            }),
            const Spacer(),
            if (answered)
              ElevatedButton(
                onPressed: nextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF004080),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}