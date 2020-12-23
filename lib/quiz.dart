import 'package:flutter/material.dart';
import 'package:quiz_app/ui/question.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  List questionBank = [
    Question.model("India got its independence on 1947", true),
    Question.model("Gandhiji is the father of our nation", true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Builder(
        builder: (BuildContext context) =>
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/flag.png",
                      height: 250,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      height: 250,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            questionBank[currentQuestion].text,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),),
                        ),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () => previousQuestion(),
                          color: Colors.blueGrey.shade400,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),

                        ),
                        RaisedButton(
                          onPressed: () => checkAnswer(true, context),
                          color: Colors.blueGrey.shade400,
                          child: Text(
                            "TRUE",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),

                        ),
                        RaisedButton(
                          onPressed: () => checkAnswer(false, context),
                          color: Colors.blueGrey.shade400,
                          child: Text(
                            "FALSE",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),

                        ),
                        RaisedButton(
                          onPressed: () => nextQuestion(),
                          color: Colors.blueGrey.shade400,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),

                        ),
                      ]
                  ),
                  Spacer(),
                ],
              ),
            ),
      ),
    );
  }

  checkAnswer(bool choice, BuildContext context) {
    if (choice == questionBank[currentQuestion].isTrue) {
      final snackbar = SnackBar(
        content: Text("Correct !!!"),
        backgroundColor: Colors.green,

        duration: Duration(milliseconds: 500,),

      );
      Scaffold.of(context).showSnackBar(snackbar);
      updateQuestion();
    }
    else {
      final snackbar = SnackBar(
        content: Text("Incorrect !!!"),
        backgroundColor: Colors.red,

        duration: Duration(milliseconds: 500,),

      );

      Scaffold.of(context).showSnackBar(snackbar);
      updateQuestion();
    }
  }

  updateQuestion() {
    setState(() {
      currentQuestion = (currentQuestion + 1) % questionBank.length;
    });
  }
  previousQuestion(){
    setState(() {
      currentQuestion = (currentQuestion - 1) % questionBank.length;
    });
  }
  nextQuestion() {
    updateQuestion();
  }
}