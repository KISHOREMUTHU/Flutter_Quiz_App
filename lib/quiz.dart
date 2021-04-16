import 'package:flutter/material.dart';
import 'package:quiz_app/ui/question.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  List questionBank = [
    Question.model("India got its independence on ____________", "A)  1947","B)  1950","C)  1948","D)  1945","A", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("____________ is called the father of our nation","A)  Jawaharlal Nehru","B)  Mahatma Gandhi","C)  Subhash Chandra Bose","D)  Sardar Vallabhai Patel", "B" , 'Since , Gandhiji has worked a lot for the Indian Independence , he is known as the Father of our Nation'),
    Question.model("It is the 75th Independence Day this year which means __________", "A)  Achieved 73 years of freedom","B)  Achieved 74 years of freedom","C)  Achieved 75 years of freedom","D)  Both B and C","B", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("The ratio of the national flag based on length to height is _________", "A)  2:3","B)  4:2","C)  3:2","D)  4:3","C", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("On the Independence Day, the Prime Minister of India hoists our tricolour flag at _____________", "A)  The Purana Qila, Delhi","B)  The Red Fort, Old Delhi","C)  The Red Fort, Agra","D)  The India Gate, New Delhi","B", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("_____________ was the Prime Minister of Britain at the time of Independence", "A)  Lord Mountbatten","B)  Winston Churchill","C)  Clement Attlee","D)  Ramsay MacDonald","C", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("_____________ was the first Governor-General of new Dominions of India", "A)  Lord Mountbatten","B)  C. Rajgopalchari","C)  Dr. BR Amdedkar","D)  Dr. Rajendra Prasad","A", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("_____________ was known as the partition plan", "A)  Macaulay Plan","B)  Atlee Announcement","C)  Montagu-Chelmsford Reforms","D)  Mountbatten Plan","D", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model("Jallianwala Bagh Massacre took place in ___________", "A)  10 April, 1917","B)  13 April, 1918","C)  9 April, 1916","D)  13 April, 1919","D", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),
    Question.model(" The famous quote 'A tryst with destiny' is given by ______________", "A)  Dr. BR Ambedkar","B)  Pt. Jawaharlal Nehru","C)  Mahatma Gandhi","D)  Abdul Kalam Azad","B", 'On 1947 , India got its independence under the leadership of Mahatma Gandhi'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Freedom 50 "),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      body: Builder(
        builder: (BuildContext context) =>
            Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/india.jpg",
                      height: 250,
                      width: 250,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                questionBank[currentQuestion].text,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),),
                            ),

                          ),
                          SizedBox(height : 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("  " +questionBank[currentQuestion].A,
                              textAlign:  TextAlign.left,
                              style : TextStyle(
                                fontSize : 19,

                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("  "+questionBank[currentQuestion].B,
                                style : TextStyle(
                                  fontSize : 19,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("  "+questionBank[currentQuestion].C,
                                style : TextStyle(
                                  fontSize : 19,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("  "+questionBank[currentQuestion].D,
                                style : TextStyle(
                                  fontSize : 19,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        RaisedButton(


                          onPressed: () => checkAnswer("A", context),
                          color: Colors.blueGrey.shade400,
                          child: Text(
                            "A",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),

                        ),
                        SizedBox(width : 40),
                        RaisedButton(
                          onPressed: () => checkAnswer("B", context),
                          color: Colors.blueGrey.shade400,
                          child: Text(
                            "B",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),

                        ),

                      ]
                  ),
                  SizedBox(height : 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () => checkAnswer("C", context),
                        color: Colors.blueGrey.shade400,
                        child: Text(
                          "C",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),

                      ),
                      SizedBox(width: 40,),
                      RaisedButton(
                        onPressed: () => checkAnswer("D", context),
                        color: Colors.blueGrey.shade400,
                        child: Text(
                          "D",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height : 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () => previousQuestion(),
                        color: Colors.blueGrey.shade400,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),

                      ),
                      SizedBox(width : 10),

                      RaisedButton(
                        onPressed: () => nextQuestion(),
                        color: Colors.blueGrey.shade400,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),

                      ),
                    ],
                  ),

                  Spacer(),
                ],
              ),
            ),
      ),
    );
  }

  checkAnswer(String choice, BuildContext context) {
    if (choice == questionBank[currentQuestion].ans) {
      final snackbar = SnackBar(
        content: Text("Correct !!!"),
        backgroundColor: Colors.green,

        duration: Duration(milliseconds: 50,),

      );
      Scaffold.of(context).showSnackBar(snackbar);
      //showDetails(context, currentQuestion);
      //updateQuestion();
    }
    else {
      final snackbar = SnackBar(
        content: Text("Incorrect !!!"),
        backgroundColor: Colors.red,

        duration: Duration(milliseconds: 50,),


      );

      Scaffold.of(context).showSnackBar(snackbar);
      //showDetails(context, currentQuestion);
      //updateQuestion();
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




