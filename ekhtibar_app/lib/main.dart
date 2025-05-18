import 'package:flutter/material.dart';
import 'app_brain.dart';

AppBrain appBrain =AppBrain();

void main() {
  runApp(ExamApp());
}

class ExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ُExam App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: Icon(
                    Icons.school,
                  color: Colors.white,
                    size: 40,
                  ),
              ),
              Text('Exam',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<Widget> answers = [];

  void checkAnswer(bool user){
    bool correctAnswer = appBrain.getQuestoinAnswer();
      setState(() {
        if (user == correctAnswer) {
          answers.add(
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.thumb_up,
                color: Colors.green,
                size: 40,
              ),
            ),
          );
        } else {
          answers.add(
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.thumb_down,
                color: Colors.red,
                size: 40,
              ),
            ),
          );
        }
        appBrain.nextQuestoin();
      }
    );
  }


  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answers,
        ),
        Expanded(
            flex: 5,
          child: Center(
            child: Column(
              children: [
                Image.asset(appBrain.getQuestoinImage()),
                SizedBox(height: 20),
                Text(appBrain.getQuestoinText(),
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 179, 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: (){
                checkAnswer(true);
              },
              child: Text('صح',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),)
          ),
        ),
        ),
        Expanded(
        child: 
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 179, 8, 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: (){
                checkAnswer(false);
            }, child: Text('خطأ',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),)
          ),
      ),
      ),
      ]
    );
  }
}